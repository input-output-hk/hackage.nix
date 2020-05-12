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
      identifier = { name = "OpenGLCheck"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Davie (tom.davie@gmail.com)";
      author = "Thomas Davie";
      homepage = "";
      url = "";
      synopsis = "Quickcheck instances for various data structures.";
      description = "Adds arbitrary instances for OpenGL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      };
    }