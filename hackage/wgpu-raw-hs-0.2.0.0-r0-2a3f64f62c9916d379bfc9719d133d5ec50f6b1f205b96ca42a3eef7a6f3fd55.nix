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
    flags = { glfw = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "wgpu-raw-hs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Jonathan Merritt, 2021";
      maintainer = "j.s.merritt@gmail.com";
      author = "Jonathan Merritt";
      homepage = "";
      url = "";
      synopsis = "WGPU Raw";
      description = "A very low-level WGPU binding.\nCurrently, this package will only work properly on macOS. In the future,\nsupport for Linux and Windows is planned.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.glfw) (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))) ++ pkgs.lib.optional (system.isOsx) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (system.isLinux) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        frameworks = pkgs.lib.optionals (flags.glfw) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."AppKit" or (errorHandler.sysDepError "AppKit"))
          (pkgs."QuartzCore" or (errorHandler.sysDepError "QuartzCore"))
        ]);
        buildable = true;
      };
    };
  }