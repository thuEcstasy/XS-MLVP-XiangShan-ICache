all: test clean
	@echo "All complete"

test: compile
	@rm *.a 2>/dev/null || true
	@echo "--------------Comple Success Test Step DUT--------------------"
	@cd ../ && PYTHONPATH=.:/usr/local/share/picker/python/xspcomm/.. python3 example.py && rm -rf *.fst *.vcd *.fsdb *.log *.key 2>/dev/null || (echo "Error: Test failed, plz check whether behavior is correct" && sleep 10)
	@echo "--------------------------------------------------------------"

# copy xspcomm lib
copy_xspcomm_lib=true
ifneq ($(copy_xspcomm_lib), true)
copy_xspcomm:
	@echo "Ignore copy python module: xspcomm"
else
copy_xspcomm:
	@echo "Try copy python module: xspcomm"
	@cp -r /usr/local/share/picker/python/xspcomm xspcomm
endif

compile: copy_xspcomm
	cmake . -Bbuild
	cmake --build build --config Debug --parallel `nproc`
	@cp build/_${TARGET}.so .
	@cp build/lib${TARGET}.py .

clean:
	@rm -rf *.fst *.vcd *.fsdb *.log *.key
