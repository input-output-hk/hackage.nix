{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      xlib = false;
      xlib_xrandr = false;
      xcb = false;
      wayland = false;
      mir = false;
      android = false;
      win32 = false;
      vi = false;
      ios = false;
      macos = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vulkan";
          version = "2.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Joe Hermaszewski";
        maintainer = "live.long.and.prosper@monoid.al";
        author = "Joe Hermaszewski";
        homepage = "http://github.com/expipiplus1/vulkan#readme";
        url = "";
        synopsis = "Bindings to the Vulkan graphics API.";
        description = "Please see readme.md";
        buildType = "Simple";
      };
      components = {
        "vulkan" = {
          depends  = [
            hsPkgs.cpphs
            hsPkgs.base
            hsPkgs.vector-sized
          ];
          libs = if system.isWindows
            then [ pkgs.vulkan-1 ]
            else [ pkgs.vulkan ];
        };
      };
    }