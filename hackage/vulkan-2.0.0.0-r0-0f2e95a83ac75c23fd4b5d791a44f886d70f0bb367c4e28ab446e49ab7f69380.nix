{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
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
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "vulkan"; version = "2.0.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
        libs = if system.isWindows
          then [ (pkgs."vulkan-1" or (errorHandler.sysDepError "vulkan-1")) ]
          else [ (pkgs."vulkan" or (errorHandler.sysDepError "vulkan")) ];
        buildable = true;
        };
      };
    }