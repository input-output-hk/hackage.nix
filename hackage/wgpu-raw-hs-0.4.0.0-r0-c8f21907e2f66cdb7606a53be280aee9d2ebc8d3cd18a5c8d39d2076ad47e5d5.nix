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
    flags = { glfw = true; sdl2 = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "wgpu-raw-hs"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Jonathan Merritt, 2021";
      maintainer = "j.s.merritt@gmail.com";
      author = "Jonathan Merritt";
      homepage = "";
      url = "";
      synopsis = "WGPU Raw";
      description = "A very low-level WGPU binding.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.glfw) (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))) ++ pkgs.lib.optional (flags.sdl2) (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))) ++ pkgs.lib.optional (system.isOsx) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (system.isLinux) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        frameworks = pkgs.lib.optionals (flags.glfw) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."AppKit" or (errorHandler.sysDepError "AppKit"))
          (pkgs."QuartzCore" or (errorHandler.sysDepError "QuartzCore"))
        ]) ++ pkgs.lib.optionals (flags.sdl2) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."AppKit" or (errorHandler.sysDepError "AppKit"))
          (pkgs."QuartzCore" or (errorHandler.sysDepError "QuartzCore"))
        ]);
        pkgconfig = pkgs.lib.optional (flags.sdl2) (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2"));
        buildable = true;
      };
    };
  }