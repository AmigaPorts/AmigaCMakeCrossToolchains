SET(ASM_DIALECT "-VASM")
SET(CMAKE_ASM${ASM_DIALECT}_SOURCE_FILE_EXTENSIONS vasm;asm)

# This section exists to override the one in CMakeASMInformation.cmake
# (the default Information file). This removes the <FLAGS>
# thing so that your C compiler flags that have been set via
# set_target_properties don't get passed to nasm and confuse it.
IF(NOT CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT)
	SET(CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT "<CMAKE_ASM${ASM_DIALECT}_COMPILER> <FLAGS> -o <OBJECT> <SOURCE>")
ENDIF(NOT CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT)

INCLUDE(CMakeASMInformation)
SET(ASM_DIALECT)
