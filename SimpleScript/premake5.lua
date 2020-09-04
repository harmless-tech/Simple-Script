project "SimpleScript"
    kind "ConsoleApp"
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
        -- Maybe later
    }

    links {
        -- Maybe later
    }

    filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"