#----------------------------------------------------------------
#   Makefile for denoise utility in SPLASH 
#   This file is just a wrapper for the sub-make in the build
#   directory. Refer to splash/build/Makefile for more details.
#
#   (c) 2020 Daniel Price
#
#----------------------------------------------------------------

.PHONY: denoise splash install docs tests src bin
denoise:
	@cd splash/build; ${MAKE} denoise DOUBLEPRECISION=no 

splash:
	@cd splash/build; ${MAKE} ${MAKECMDGOALS}

%::
	@cd splash/build; ${MAKE} ${MAKECMDGOALS}

install:
	@cd splash/build; ${MAKE} ${MAKECMDGOALS}

docs:
	@cd docs; ${MAKE}

clean:
	@cd splash/build; ${MAKE} clean
