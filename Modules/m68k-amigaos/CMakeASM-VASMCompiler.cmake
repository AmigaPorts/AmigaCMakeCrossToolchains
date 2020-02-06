FIND_PROGRAM(VASM vasmm68k_mot)
SET(ASM_DIALECT "-VASM")
if (VASM)

	# Hack to use VASM to compile the assembly code
	set(CMAKE_ASM${ASM_DIALECT}_COMPILER_ENV_VAR ${CMAKE_ASM_COMPILER_ENV_VAR}" ")
	set(CMAKE_ASM${ASM_DIALECT}_COMPILER ${VASM})
	set(CMAKE_ASM${ASM_DIALECT}_OUTPUT_EXTENSION ".o")
	set(CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT "<CMAKE_ASM${ASM_DIALECT}_COMPILER> <FLAGS> -o <OBJECT> <SOURCE>")
	set(CMAKE_ASM${ASM_DIALECT}_FLAGS "-devpac -Fhunk")
else ()
	message(ERROR "Could not find vasmm68k_mot! It is required to compile this library!")
endif ()
INCLUDE(CMakeDetermineASMCompiler)
SET(ASM_DIALECT)
