{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; usenativewindowslibraries = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "GLUT"; version = "2.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jason Dagit <dagitj@gmail.com>, Sven Panne <sven.panne@aedion.de>";
      author = "";
      homepage = "http://www.haskell.org/haskellwiki/Opengl";
      url = "";
      synopsis = "A binding for the OpenGL Utility Toolkit";
      description = "A Haskell binding for the OpenGL Utility Toolkit, a window system independent\ntoolkit for writing OpenGL programs. For more information about the C library\non which this binding is based, please see:\n<http://www.opengl.org/resources/libraries/glut/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
          (hsPkgs."Tensor" or ((hsPkgs.pkgs-errors).buildDepError "Tensor"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [
            (pkgs."glut32" or ((hsPkgs.pkgs-errors).sysDepError "glut32"))
            ]
          else (pkgs.lib).optional (!system.isOsx) (pkgs."glut" or ((hsPkgs.pkgs-errors).sysDepError "glut"));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) ((pkgs.lib).optional (system.isOsx) (pkgs."GLUT" or ((hsPkgs.pkgs-errors).sysDepError "GLUT")));
        buildable = true;
        };
      };
    }