{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "GLUT"; version = "2.1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sven Panne <sven.panne@aedion.de>";
      author = "";
      homepage = "http://www.haskell.org/HOpenGL/";
      url = "";
      synopsis = "A binding for the OpenGL Utility Toolkit";
      description = "A Haskell binding for the OpenGL Utility Toolkit, a window\nsystem independent toolkit for writing OpenGL programs. For more\ninformation about the C library on which this binding is based,\nplease see: <http://www.opengl.org/resources/libraries/glut/>.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        libs = [ (pkgs."glut" or ((hsPkgs.pkgs-errors).sysDepError "glut")) ];
        buildable = true;
        };
      };
    }