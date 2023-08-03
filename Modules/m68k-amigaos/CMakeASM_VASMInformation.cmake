# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

# Support for vasm assembler: m68k, ppc, et al.

set(CMAKE_ASM_VASM_SOURCE_FILE_EXTENSIONS vasm;asm)

# Allow overriding object format: ELF is usually the best option but e.g. m68k-amigaos might expect hunk
if(NOT CMAKE_ASM_VASM_OBJECT_FORMAT)
  set(CMAKE_ASM_VASM_OBJECT_FORMAT elf)
endif()

if(NOT CMAKE_ASM_VASM_COMPILE_OBJECT)
  set(CMAKE_ASM_VASM_COMPILE_OBJECT "<CMAKE_ASM_VASM_COMPILER> <FLAGS> -F${CMAKE_ASM_VASM_OBJECT_FORMAT} -o <OBJECT> <SOURCE>" CACHE STRING "" FORCE)
endif()

set(ASM_DIALECT "_VASM")
include(CMakeASMInformation)
set(ASM_DIALECT)
