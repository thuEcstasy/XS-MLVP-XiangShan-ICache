TOP_ENTRY := ./rtl/ICache/ICache.sv
TOP_FILES := $(shell tr '\n' ',' < ./rtl/ICache.txt | sed 's/,$$//')
TL ?= cpp

ifneq ($(TARGET),)
	TARGET := $(TARGET)
else
	TARGET := out/picker_out_ICache
endif

# if EXAMPLE is set, then _EXAMPLE is set to -e
ifneq ($(EXAMPLE), false)
	_EXAMPLE := -e
endif
_EXAMPLE ?=
# if VERBOSE is set, then _VERBOSE is set to -v
ifneq ($(VERBOSE), false)
	_VERBOSE := --verbose
endif
_VERBOSE ?=
# if WAVE is set, then _WAVEFORM is set to -w
ifneq ($(WAVE), false)
	ifneq ($(WAVE), true)
		_WAVEFORM := -w $(WAVE)
	else
		_WAVEFORM := -w ICache.fst
	endif
endif
_WAVEFORM ?=

icache:
	@echo "Building tage module with parameters: "
	@echo "TL=${TL}"
	@echo "TOP_ENTRY=${TOP_ENTRY}"
	@echo "TOP_FILES=${TOP_FILES}"
	@echo "TARGET=${TARGET}"
	@echo "WAVEFORM=${_WAVEFORM}"
	@echo "VERBOSE=${_VERBOSE}"
	@echo "EXAMPLE=${_EXAMPLE}"

	@mkdir -p out
	rm -rf ${TARGET} 
	picker export ${TOP_ENTRY} --fs rtl/ICache/Arbiter2_ICacheMissReq.sv,rtl/ICache/Arbiter5_MSHRAcquire.sv,rtl/ICache/Demultiplexer.sv,rtl/ICache/Demultiplexer_1.sv,rtl/ICache/FIFOReg.sv,rtl/ICache/ICacheDataArray.sv,rtl/ICache/ICacheMSHR.sv,rtl/ICache/ICacheMSHR_1.sv,rtl/ICache/ICacheMSHR_10.sv,rtl/ICache/ICacheMSHR_11.sv,rtl/ICache/ICacheMSHR_12.sv,rtl/ICache/ICacheMSHR_13.sv,rtl/ICache/ICacheMSHR_2.sv,rtl/ICache/ICacheMSHR_3.sv,rtl/ICache/ICacheMSHR_4.sv,rtl/ICache/ICacheMSHR_5.sv,rtl/ICache/ICacheMSHR_6.sv,rtl/ICache/ICacheMSHR_7.sv,rtl/ICache/ICacheMSHR_8.sv,rtl/ICache/ICacheMSHR_9.sv,rtl/ICache/ICacheMainPipe.sv,rtl/ICache/ICacheMetaArray.sv,rtl/ICache/ICacheMissUnit.sv,rtl/ICache/ICacheReplacer.sv,rtl/ICache/IPrefetchPipe.sv,rtl/ICache/MuxBundle.sv,rtl/ICache/SRAMTemplate.sv,rtl/ICache/SRAMTemplateWithFixedWidth.sv,rtl/ICache/SRAMTemplate_2.sv,rtl/ICache/WayLookup.sv,rtl/ICache/array.sv,rtl/ICache/array_0.sv,rtl/ICache/array_0_ext.v,rtl/ICache/array_ext.v --lang ${TL} -c \
		--tdir ${TARGET} ${_WAVEFORM}${_EXAMPLE} ${_VERBOSE}
		
