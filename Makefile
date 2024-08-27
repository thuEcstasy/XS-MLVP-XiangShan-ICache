export TL ?= python
export WAVE ?= true
export VERBOSE ?= false
export EXAMPLE ?= false
export TARGET



default:
	@echo "Usage"
	@echo "  icache:     build ICache DUT module"

test:
	make -f tests/Makefile

icache:
	make -f ./mk/ICache.mk icache
