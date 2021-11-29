import circuitgraph as cg
import DC_format_funcs
import networkx as nx
import os
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D
import itertools
import random

def construct_digraph(G, circuit, state, nxt_state, extra_state, nxt_extra_state, colormap):

    dffpair = dict(zip(nxt_state + nxt_extra_state, state + extra_state))
    # print(dffpair)
    state_set = state+extra_state
    nxt_state_set = nxt_state + nxt_extra_state

    for node in state:
        G.add_node(node, color=colormap[0], label='original DFF')
        check_set = circuit.transitive_fanout(node)
        for src in nxt_state_set:
            if src in check_set:
                G.add_edge(node, dffpair[src], capacity=1)
    for node in extra_state:
        check_set = circuit.transitive_fanout(node)
        G.add_node(node, color=colormap[1], label='extra DFF')
        for src in nxt_state_set:
            if src in check_set:
                G.add_edge(node, dffpair[src], capacity=1)

    for node in nxt_state_set:
        check_set = circuit.transitive_fanin(node)
        for src in state_set:
            if src in check_set:
                G.add_edge(src, dffpair[node])

    return G


def construct_graph_ext(G, circuit, extra_state, nxt_extra_state, colormap):

    dffpair = dict(zip(nxt_extra_state, extra_state))
    for node in extra_state:
        check_set = circuit.transitive_fanout(node)
        G.add_node(node, color=colormap[1], label='extra DFF')
        for src in nxt_extra_state:
            if src in check_set:
                G.add_edge(node, dffpair[src], capacity=1)

    for node in nxt_extra_state:
        check_set = circuit.transitive_fanin(node)
        for src in extra_state:
            if src in check_set:
                G.add_edge(src, dffpair[node])

    return G

def construct_graph_ori(G, circuit, state, nxt_state, colormap):

    dffpair = dict(zip(nxt_state, state))
    for node in state:
        check_set = circuit.transitive_fanout(node)
        G.add_node(node, color=colormap[0], label='ori. DFF')
        for src in nxt_state:
            if src in check_set:
                G.add_edge(node, dffpair[src], capacity=1)

    for node in nxt_state:
        check_set = circuit.transitive_fanin(node)
        for src in state:
            if src in check_set:
                G.add_edge(src, dffpair[node])

    return G

def find_node_with_max_neighbors(G):
    n_neighbor_dict = {}
    max_n_neighbor = 0
    max_node = 0
    for node in G.nodes():
        neighbors = nx.all_neighbors(G, node)
        n_neighbor = 0
        for item in neighbors:
            n_neighbor += 1
        n_neighbor_dict[node] = n_neighbor

        if n_neighbor > max_n_neighbor:
            max_n_neighbor = n_neighbor
            max_node = node

    return max_node, n_neighbor_dict

def get_se_so_lists(se_list, so_list, ratio):
    n_selist = len(se_list)
    n_solist = len(so_list)

    if ratio > n_selist or ratio > n_solist:
        print('not enough state signals! n_selist: {}, n_solist: {}, ratio: {}'.format(n_selist, n_solist, ratio))
        ratio = min(n_selist, n_solist)
        print('set ratio to its max. value: ', ratio)
        # exit()

    for i in range(n_selist):
        item = se_list[i]
        if '_parse_' in item:
            item = item.replace('_parse_', '[')
            item ='{}]'.format(item)
        se_list[i] = item

    for i in range(n_solist):
        item = so_list[i]
        if '_parse_' in item:
            item = item.replace('_parse_', '[')
            item ='{}]'.format(item)
        so_list[i] = item

    # se_list.reverse()     # only for test
    # so_list.reverse()
    se_list = se_list[0:ratio]
    so_list = so_list[0:ratio]
    return se_list, so_list, ratio


def find_scco_scce_sccm(G, ori_state_set, ext_state_set, n_ori_state, n_ext_state):
    sccs = nx.strongly_connected_components(G)
    n_scc_ori = 0
    n_scc_ext = 0
    n_scc_mix = 0
    scc_o = []
    scc_e = []
    scc_m = []
    for scc in sccs:
        ori_count, ext_count = check_scc(scc, ori_state_set, ext_state_set)
        if 0 < ori_count <= n_ori_state and ext_count == 0:
            n_scc_ori += 1
            scc_o.append(scc)

        if 0 < ext_count <= n_ext_state and ori_count == 0:
            n_scc_ext += 1
            scc_e.append(scc)

        if 0 < ext_count <= n_ext_state and 0 < ori_count <= n_ori_state:
            n_scc_mix += 1
            scc_m.append(scc)
    return scc_o, scc_e, scc_m, n_scc_ori, n_scc_ext, n_scc_mix


def update_graph(G, se, so):

    #These are enough (not complete) edges being added. But not necessary
    carry_node = '{}_c'.format(se)
    borrow_node = '{}_b'.format(se)

    in_se = G.in_edges(se)
    out_se = G.out_edges(se)
    in_so = G.in_edges(so)
    out_so = G.out_edges(so)

    for edge in in_se:
        G.add_edge(edge[0], carry_node)
        G.add_edge(edge[0], borrow_node)
        # G.add_edge(edge[0], so)

    for edge in out_se:
        G.add_edge(carry_node, edge[1])
        G.add_edge(borrow_node, edge[1])
        # G.add_edge(so, edge[1])


    for edge in in_so:
        G.add_edge(edge[0], se)
        G.add_edge(edge[0], carry_node)
        G.add_edge(edge[0], borrow_node)

    for edge in out_so:
        # G.add_edge(se, edge[1])
        G.add_edge(carry_node, edge[1])
        G.add_edge(borrow_node, edge[1])

    G.remove_node(so)
    # G.add_edge(borrow_node, se)
    # G.add_edge(borrow_node, so)

    return G


def largest_scc(sccs):
    largest = 0
    for scc in sccs:
        nnode = len(scc)
        if nnode > largest:
            largest = nnode
            largest_scc = scc
    return largest_scc

def most_neighbor_node(G, scc):
    max_neighbor=0
    max_neighbor_node=0
    for node in scc:
        neighbors = nx.all_neighbors(G, node)
        n_neighbor = 0
        for item in neighbors:
            n_neighbor += 1
        if n_neighbor > max_neighbor:
            max_neighbor = n_neighbor
            max_neighbor_node = node
    return max_neighbor_node

def check_scc(scc, ori_state_set, ext_state_set):
    ori_count = 0
    ext_count = 0
    for item in scc:
        if item in ori_state_set:
            ori_count += 1
        if item in ext_state_set:
            ext_count += 1

    return ori_count, ext_count