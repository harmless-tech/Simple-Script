workspace "SimpleScriptWorkspace"
	architecture "x86_64"
	startproject "SimpleScript"

	configurations {
		"Debug",
		"Release"
	}

	flags {
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {};
--IncludeDir[""] = "%{wks.location}/vendor/v/include"

group "Dependencies"
    -- include "vendor/premake"
group ""

include "SimpleScript"