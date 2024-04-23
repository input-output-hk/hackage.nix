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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "clocked"; version = "0.4.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "shahn@joyridelabs.de";
      author = "Sönke Hahn";
      homepage = "http://patch-tag.com/r/shahn/clocked/home";
      url = "";
      synopsis = "timer functionality to clock IO commands";
      description = "clocked is a library that allows you to clock IO-operations. You can use it to clock the rendering of frames, the calculation of steps in a physics engine, the triggering of musical events in a real-time system, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ] ++ pkgs.lib.optional (!system.isOsx) (hsPkgs."clock" or (errorHandler.buildDepError "clock"));
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ pkgs.lib.optional (system.isWindows) (pkgs."QtCore4" or (errorHandler.sysDepError "QtCore4"));
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."QtCore" or (errorHandler.sysDepError "QtCore"));
        pkgconfig = pkgs.lib.optional (system.isLinux) (pkgconfPkgs."QtCore" or (errorHandler.pkgConfDepError "QtCore"));
        buildable = true;
      };
    };
  }