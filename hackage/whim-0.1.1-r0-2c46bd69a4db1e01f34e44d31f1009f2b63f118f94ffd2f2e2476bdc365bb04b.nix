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
      specVersion = "1.2";
      identifier = { name = "whim"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "Evan Martin";
      homepage = "http://neugierig.org/software/darcs/whim/";
      url = "";
      synopsis = "A Haskell window manager";
      description = "A simple X Windows window manager in Haskell; written before XMonad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = { "whim" = { buildable = true; }; };
      };
    }