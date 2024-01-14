add_library("Walnut" STATIC
  "Walnut/src/Walnut/Application.cpp"
  "Walnut/src/Walnut/Application.h"
  "Walnut/src/Walnut/EntryPoint.h"
    "Walnut/src/Walnut/ImGui/ImGuiBuild.cpp"
  "Walnut/src/Walnut/Image.cpp"
  "Walnut/src/Walnut/Image.h"
    "Walnut/src/Walnut/Input/Input.cpp"
    "Walnut/src/Walnut/Input/Input.h"
    "Walnut/src/Walnut/Input/KeyCodes.h"
  "Walnut/src/Walnut/Layer.h"
  "Walnut/src/Walnut/Random.cpp"
  "Walnut/src/Walnut/Random.h"
  "Walnut/src/Walnut/Timer.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("Walnut"
    "ImGui"
    "GLFW"
  )
  set_target_properties("Walnut" PROPERTIES
    OUTPUT_NAME "Walnut"
    ARCHIVE_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Debug-linux-x86_64/Walnut"
    LIBRARY_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Debug-linux-x86_64/Walnut"
    RUNTIME_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Debug-linux-x86_64/Walnut"
  )
endif()
target_include_directories("Walnut" PRIVATE
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/src>
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/vendor/imgui>
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/vendor/glfw/include>
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/vendor/stb_image>
  $<$<CONFIG:Debug>:/home/sheen/vulkan/1.3.268.0/x86_64/Include>
  $<$<CONFIG:Debug>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/../vendor/glm>
)
target_compile_definitions("Walnut" PRIVATE
  $<$<CONFIG:Debug>:WL_DEBUG>
)
target_link_directories("Walnut" PRIVATE
)
target_link_libraries("Walnut"
  $<$<CONFIG:Debug>:ImGui>
  $<$<CONFIG:Debug>:GLFW>
  $<$<CONFIG:Debug>:libvulkan.so>
)
target_compile_options("Walnut" PRIVATE
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("Walnut" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("Walnut"
    "ImGui"
    "GLFW"
  )
  set_target_properties("Walnut" PROPERTIES
    OUTPUT_NAME "Walnut"
    ARCHIVE_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Release-linux-x86_64/Walnut"
    LIBRARY_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Release-linux-x86_64/Walnut"
    RUNTIME_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Release-linux-x86_64/Walnut"
  )
endif()
target_include_directories("Walnut" PRIVATE
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/src>
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/vendor/imgui>
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/vendor/glfw/include>
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/vendor/stb_image>
  $<$<CONFIG:Release>:/home/sheen/vulkan/1.3.268.0/x86_64/Include>
  $<$<CONFIG:Release>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/../vendor/glm>
)
target_compile_definitions("Walnut" PRIVATE
  $<$<CONFIG:Release>:WL_RELEASE>
)
target_link_directories("Walnut" PRIVATE
)
target_link_libraries("Walnut"
  $<$<CONFIG:Release>:ImGui>
  $<$<CONFIG:Release>:GLFW>
  $<$<CONFIG:Release>:libvulkan.so>
)
target_compile_options("Walnut" PRIVATE
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-O2>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-O2>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("Walnut" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  add_dependencies("Walnut"
    "ImGui"
    "GLFW"
  )
  set_target_properties("Walnut" PROPERTIES
    OUTPUT_NAME "Walnut"
    ARCHIVE_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Dist-linux-x86_64/Walnut"
    LIBRARY_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Dist-linux-x86_64/Walnut"
    RUNTIME_OUTPUT_DIRECTORY "/home/sheen/Documents/provinggrounds/Walnut/Walnut/bin/Dist-linux-x86_64/Walnut"
  )
endif()
target_include_directories("Walnut" PRIVATE
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/src>
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/vendor/imgui>
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/vendor/glfw/include>
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/vendor/stb_image>
  $<$<CONFIG:Dist>:/home/sheen/vulkan/1.3.268.0/x86_64/Include>
  $<$<CONFIG:Dist>:/home/sheen/Documents/provinggrounds/Walnut/Walnut/../vendor/glm>
)
target_compile_definitions("Walnut" PRIVATE
  $<$<CONFIG:Dist>:WL_DIST>
)
target_link_directories("Walnut" PRIVATE
)
target_link_libraries("Walnut"
  $<$<CONFIG:Dist>:ImGui>
  $<$<CONFIG:Dist>:GLFW>
  $<$<CONFIG:Dist>:libvulkan.so>
)
target_compile_options("Walnut" PRIVATE
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-O2>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-O2>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>
)
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  set_target_properties("Walnut" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()