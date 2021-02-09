project "yaml-cpp"
    kind "Staticlib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
    }
    
    includedirs
    {
      "include"
    }

    filter "system:windows"
        systemversion "latest"

    filter { "system:windows", "configurations:Debug" }
        runtime "Debug"

    filter { "system:windows", "configurations:Release" }
        runtime "Release"
        optimize "On"

    filter { "system:windows", "configurations:Dist" }
        runtime "Release"
        optimize "On"
