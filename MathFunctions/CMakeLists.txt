# first we add the executable that generates the table
add_executable(MakeTable MakeTable.cpp)

# add the command to generate the source code
add_custom_command(
  OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/Table.h
  COMMAND MakeTable ${CMAKE_CURRENT_BINARY_DIR}/Table.h
  DEPENDS MakeTable
  )

# add the main library
add_library(MathFunctions
            mysqrt.cpp
            ${CMAKE_CURRENT_BINARY_DIR}/Table.h
            )

target_include_directories(MathFunctions
          INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
          PRIVATE ${CMAKE_CURRENT_BINARY_DIR}
          )

# install rules
install(TARGETS MathFunctions DESTINATION lib)
install(FILES MathFunctions.h DESTINATION include)