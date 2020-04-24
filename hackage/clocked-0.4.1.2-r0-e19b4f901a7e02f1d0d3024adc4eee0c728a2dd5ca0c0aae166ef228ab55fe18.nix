{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "clocked"; version = "0.4.1.2"; };
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
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optional (!system.isOsx) (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"));
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ] ++ (pkgs.lib).optional (system.isWindows) (pkgs."QtCore4" or ((hsPkgs.pkgs-errors).sysDepError "QtCore4"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."QtCore" or ((hsPkgs.pkgs-errors).sysDepError "QtCore"));
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."QtCore" or ((hsPkgs.pkgs-errors).pkgConfDepError "QtCore"));
        buildable = true;
        };
      };
    }