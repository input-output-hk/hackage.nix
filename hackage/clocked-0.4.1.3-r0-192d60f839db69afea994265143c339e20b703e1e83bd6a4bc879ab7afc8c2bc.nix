{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "clocked";
        version = "0.4.1.3";
      };
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
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (!system.isOsx) (hsPkgs.clock)) ++ pkgs.lib.optional (system.isOsx) (hsPkgs.time);
        libs = [
          (pkgs."stdc++")
        ] ++ pkgs.lib.optional (system.isWindows) (pkgs."QtCore4");
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."QtCore");
        pkgconfig = pkgs.lib.optional (system.isLinux) (pkgconfPkgs.QtCore);
      };
    };
  }