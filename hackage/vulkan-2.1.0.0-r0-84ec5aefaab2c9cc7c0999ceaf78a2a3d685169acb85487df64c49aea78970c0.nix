{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      xlib = true;
      xlib_xrandr = true;
      xcb = true;
      wayland = true;
      mir = true;
      android = true;
      win32 = true;
      vi = true;
      ios = true;
      macos = true;
      safe-foreign-calls = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vulkan";
        version = "2.1.0.0";
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
          (hsPkgs.cpphs)
          (hsPkgs.base)
          (hsPkgs.vector-sized)
        ];
        libs = if system.isWindows
          then [ (pkgs."vulkan-1") ]
          else [ (pkgs."vulkan") ];
      };
    };
  }