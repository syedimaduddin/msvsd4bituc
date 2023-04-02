# ==============================================================================
# Run msvsd4bituc design
# ==============================================================================

sky130hd_msvsd4bituc_verilog:
	python3 tools/msvsd4bituc-gen.py --specfile test.json --outputDir ./work --platform sky130hd --mode verilog

sky130hd_msvsd4bituc:
	python3 tools/msvsd4bituc-gen.py --specfile test.json --outputDir ./work --platform sky130hd --mode full
	@python3 tools/parse_rpt.py
	@tools/verify_op.sh
	@@echo "=================================================================================="
	@@echo "Thank you for using OpenFASOC"
	@@echo "For more info, please read the latest documentation on openfasoc.readthedocs.io"
	@@echo "For any issues, please feel free to open an issue on GitHub repository"
	@@echo "=================================================================================="
	@@echo "   ___  _____ ______ _   _ _____  _     ____   ___   ____"
	@@echo "  / _ \|  _  \| ____| \ | |  ___|/ \   / ___| / _ \ / ___|"
	@@echo " | | | | |_) ||  _| |  \| | |_  / _ \  \___ \| | | | |    "
	@@echo " | |_| |  __/ | |___| |\  |  _|/ ___ \  ___) | |_| | |___ "
	@@echo "  \___/|_|    |_____|_| \_|_| /_/   \_\|____/ \___/ \____|"
	@@echo ""
	@@echo "=================================================================================="
	
clean:
	rm -f error_within_x.csv golden_error_opt.csv search_result.csv
	rm -rf work
	rm -rf tools/*.pyc tools/__pycache__/
	cd flow && make clean_all
	cd simulations && rm -rf run
