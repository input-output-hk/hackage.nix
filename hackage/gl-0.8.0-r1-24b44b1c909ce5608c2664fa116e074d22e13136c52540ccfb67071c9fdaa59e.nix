{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      usenativewindowslibraries = true;
      useglxgetprocaddress = true;
    };
    package = {
      specVersion = "1.24";
      identifier = {
        name = "gl";
        version = "0.8.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2017 Edward A. Kmett,\nCopyright © 2014-2017 Gabríel Arthúr Pétursson,\nCopyright © 2013 Sven Panne";
      maintainer = "ekmett@gmail.com";
      author = "Edward A. Kmett, Gabríel Arthúr Pétursson, Sven Panne";
      homepage = "";
      url = "";
      synopsis = "Complete OpenGL raw bindings";
      description = "Complete OpenGL raw bindings";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fixed)
          (hsPkgs.half)
          (hsPkgs.transformers)
        ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."opengl32") ]
          else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (!system.isIos) (pkgs."GL"));
        frameworks = pkgs.lib.optionals (!(system.isWindows && flags.usenativewindowslibraries)) (if system.isOsx
          then [ (pkgs."OpenGL") ]
          else pkgs.lib.optional (system.isIos) (pkgs."OpenGLES"));
      };
    };
  }