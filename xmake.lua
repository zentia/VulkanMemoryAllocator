target("VulkanMemoryAllocator")
    set_kind("$(kind)")
    add_includedirs("include", { public = true })
    add_headerfiles(
        "include/*.h",
        "src/*.h|Tests.h"
        )
    add_files(
        "src/*.cpp|Tests.cpp"
        )
    add_packages("vulkansdk")
    add_defines("UNICODE", "_UNICODE", "VMA_DYNAMIC_VULKAN_FUNCTIONS=1")