# Distributed under the OSI-approved BSD 3-Clause License. See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

# Load CMake's generic ASM linker inspection for the VASM dialect.
set(ASM_DIALECT "_VASM")
include(Internal/CMakeInspectASMLinker)
set(ASM_DIALECT)
