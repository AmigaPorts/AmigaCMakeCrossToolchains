# This file is used by EnableLanguage in cmGlobalGenerator to
# determine that that selected ASM-NASM compiler can actually compile
# and link the most basic of programs.   If not, a fatal error
# is set and cmake stops processing commands and will not generate
# any makefiles or projects.
SET(ASM_DIALECT "-VASM")
INCLUDE(CMakeTestASMCompiler)
SET(ASM_DIALECT)
