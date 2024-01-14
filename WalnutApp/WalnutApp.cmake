add_executable("WalnutApp"
  "WalnutApp/src/WalnutApp.cpp"
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("WalnutApp"
    "Walnut"
  )
  set_target_properties("WalnutApp" PROPERTIES
    OUTPUT_NAME "WalnutApp"
    ARCHIVE_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Debug-linux-x86_64/WalnutApp"
    LIBRARY_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Debug-linux-x86_64/WalnutApp"
    RUNTIME_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Debug-linux-x86_64/WalnutApp"
  )
endif()
target_include_directories("WalnutApp" PRIVATE
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/vendor/imgui>
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/vendor/glfw/include>
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/src>
  $<$<CONFIG:Debug>:/home/sheen/vulkan/1.3.268.0/x86_64/Include>
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/WalnutApp/../vendor/glm>
)
target_compile_definitions("WalnutApp" PRIVATE
  $<$<CONFIG:Debug>:WL_DEBUG>
)
target_link_directories("WalnutApp" PRIVATE
)
target_link_libraries("WalnutApp"
  $<$<CONFIG:Debug>:Walnut>
)
target_compile_options("WalnutApp" PRIVATE
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("WalnutApp" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("WalnutApp"
    "Walnut"
  )
  set_target_properties("WalnutApp" PROPERTIES
    OUTPUT_NAME "WalnutApp"
    ARCHIVE_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Release-linux-x86_64/WalnutApp"
    LIBRARY_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Release-linux-x86_64/WalnutApp"
    RUNTIME_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Release-linux-x86_64/WalnutApp"
  )
endif()
target_include_directories("WalnutApp" PRIVATE
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/vendor/imgui>
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/vendor/glfw/include>
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/src>
  $<$<CONFIG:Release>:/home/sheen/vulkan/1.3.268.0/x86_64/Include>
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/WalnutApp/../vendor/glm>
)
target_compile_definitions("WalnutApp" PRIVATE
  $<$<CONFIG:Release>:WL_RELEASE>
)
target_link_directories("WalnutApp" PRIVATE
)
target_link_libraries("WalnutApp"
  $<$<CONFIG:Release>:Walnut>
)
target_compile_options("WalnutApp" PRIVATE
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-O2>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-O2>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("WalnutApp" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  add_dependencies("WalnutApp"
    "Walnut"
  )
  set_target_properties("WalnutApp" PROPERTIES
    OUTPUT_NAME "WalnutApp"
    ARCHIVE_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Dist-linux-x86_64/WalnutApp"
    LIBRARY_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Dist-linux-x86_64/WalnutApp"
    RUNTIME_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/bin/Dist-linux-x86_64/WalnutApp"
  )
endif()
target_include_directories("WalnutApp" PRIVATE
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/vendor/imgui>
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/vendor/glfw/include>
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/src>
  $<$<CONFIG:Dist>:/home/sheen/vulkan/1.3.268.0/x86_64/Include>
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/WalnutApp/../vendor/glm>
)
target_compile_definitions("WalnutApp" PRIVATE
  $<$<CONFIG:Dist>:WL_DIST>
)
target_link_directories("WalnutApp" PRIVATE
)
target_link_libraries("WalnutApp"
  $<$<CONFIG:Dist>:Walnut>
)
target_compile_options("WalnutApp" PRIVATE
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-O2>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-O2>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  set_target_properties("WalnutApp" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()