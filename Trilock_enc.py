
import os
import shutil

import time
import DC_trilock_enc
import DC_state_reencode

def trilock_main():

	if os.path.exists('./netlists'):
		shutil.rmtree('./netlists')

	# generate and synthesize the encrypted netlists without state re-encoding
	DC_trilock_enc.genDC_main()
	curr_path = os.getcwd()
	os.chdir(curr_path+'/DC_noreencode/')
	os.system('dc_shell-t -f run.tcl')
	os.chdir(curr_path)

	# copy the synthesized netlists to the main path
	shutil.copytree('./DC_noreencode/netlists', './netlists')

	# state re-encoding
	DC_state_reencode.genDC_reencoding()
	os.chdir(curr_path+'/DC_reencode/')
	os.system('dc_shell-t -f sr.tcl')
	os.chdir(curr_path)

	# clean up
	if os.path.exists('./mdf_v'):
		shutil.rmtree('./mdf_v')
	if os.path.exists('./netlists'):
		shutil.rmtree('./netlists')

if __name__ == '__main__':
    trilock_main()



