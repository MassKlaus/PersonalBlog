const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) !void {
    zine.website(b, .{
        .title = "Massine Mouha",
        .host_url = "https://massinemouha.com",
        .content_dir_path = "content",
        .layouts_dir_path = "layouts",
        .assets_dir_path = "assets",
        .static_assets = &.{
            "fonts/Electrolize/Electrolize-Regular.ttf",
            "fonts/Oxygen/Oxygen-Bold.ttf",
            "fonts/Oxygen/Oxygen-Light.ttf",
            "fonts/Oxygen/Oxygen-Regular.ttf",
            "fonts/Raleway/Raleway-Italic-VariableFont_wght.ttf",
            "fonts/Raleway/Raleway-VariableFont_wght.ttf",
            "fonts/Raleway/static/Raleway-Black.ttf",
            "fonts/Raleway/static/Raleway-BlackItalic.ttf",
            "fonts/Raleway/static/Raleway-Bold.ttf",
            "fonts/Raleway/static/Raleway-BoldItalic.ttf",
            "fonts/Raleway/static/Raleway-ExtraBold.ttf",
            "fonts/Raleway/static/Raleway-ExtraBoldItalic.ttf",
            "fonts/Raleway/static/Raleway-ExtraLight.ttf",
            "fonts/Raleway/static/Raleway-ExtraLightItalic.ttf",
            "fonts/Raleway/static/Raleway-Italic.ttf",
            "fonts/Raleway/static/Raleway-Light.ttf",
            "fonts/Raleway/static/Raleway-LightItalic.ttf",
            "fonts/Raleway/static/Raleway-Medium.ttf",
            "fonts/Raleway/static/Raleway-MediumItalic.ttf",
            "fonts/Raleway/static/Raleway-Regular.ttf",
            "fonts/Raleway/static/Raleway-SemiBold.ttf",
            "fonts/Raleway/static/Raleway-SemiBoldItalic.ttf",
            "fonts/Raleway/static/Raleway-Thin.ttf",
            "fonts/Raleway/static/Raleway-ThinItalic.ttf",
            "fonts/FiraCode/FiraCode-VF.ttf",
        },
        .build_assets = &.{
            .{
                .name = "zon",
                .lp = b.path("build.zig.zon"),
            },
        },
    });
}
