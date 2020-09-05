workspace "SimpleScriptWorkspace"
	architecture "x86_64"
	startproject "SimpleScript"

	configurations {
		"Debug",
		"Release"
	}

	platforms {
		"Win64",
		"Linux64",
		"MacOS"
	}

	flags {
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {};
IncludeDir["c11threads"] = "%{wks.location}/vendor/c11threads"
--IncludeDir[""] = "%{wks.location}/vendor/v/include"

group "Dependencies"
    -- include "vendor/premake"
group ""

filter "platforms:Win64"
	system "Windows"
	
filter "platforms:Linux64"
	system "Linux"
	
filter "platforms:MacOS"
    system "MacOSX"

include "SimpleShared"
include "SimpleCompiler"
include "SimpleRuntime"
include "SimpleScript"