project "SimpleRuntime"
    kind "StaticLib"
    language "C"
    cdialect "C11" -- Allows for multi-threading.
    staticruntime "on"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    
    files {
        "src/**.h",
        "src/**.c"
    }

    includedirs {
        "src",
        "%{wks.location}/SimpleShared/src"
    }

    links {
        "SimpleShared"
    }

    filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"