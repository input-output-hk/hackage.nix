{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      usenativewindowslibraries = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "GLUT";
        version = "2.5.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Panne <svenpanne@gmail.com>, Jason Dagit <dagitj@gmail.com>";
      author = "";
      homepage = "http://www.haskell.org/haskellwiki/Opengl";
      url = "";
      synopsis = "A binding for the OpenGL Utility Toolkit";
      description = "A Haskell binding for the OpenGL Utility Toolkit, a window system independent\ntoolkit for writing OpenGL programs. For more information about the C library\non which this binding is based, please see:\n<http://www.opengl.org/resources/libraries/glut/>.";
      buildType = "Simple";
    };
    components = {
      "GLUT" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.OpenGL)
          (hsPkgs.OpenGLRaw)
        ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."glut32") ]
          else pkgs.lib.optional (!system.isOsx) (pkgs."glut");
        frameworks = pkgs.lib.optionals (!(system.isWindows && flags.usenativewindowslibraries)) (pkgs.lib.optional (system.isOsx) (pkgs."GLUT"));
      };
    };
  }