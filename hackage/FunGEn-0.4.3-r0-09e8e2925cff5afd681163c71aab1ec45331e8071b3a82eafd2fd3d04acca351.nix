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
      specVersion = "1.6";
      identifier = { name = "FunGEn"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2002 Andre Furtado <awbf@cin.ufpe.br>";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Andre Furtado <awbf@cin.ufpe.br>";
      homepage = "http://joyful.com/fungen";
      url = "";
      synopsis = "FUNctional Game ENgine";
      description = "A lightweight, cross-platform, OpenGL/GLUT-based game engine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }