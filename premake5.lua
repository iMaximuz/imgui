project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_testedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
    
    filter "system:macosx"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"