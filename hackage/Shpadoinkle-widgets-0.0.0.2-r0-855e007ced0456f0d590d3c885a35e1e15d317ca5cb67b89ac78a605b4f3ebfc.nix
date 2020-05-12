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
      specVersion = "1.12";
      identifier = { name = "Shpadoinkle-widgets"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@protonmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A collection of common reusable types and components.";
      description = "There are many shared abstractions between various UI's that represent themselves in frameworks, and applications. This package provides a useful subset of these concepts as types. Along with implimentations consuming these types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
          (hsPkgs."Shpadoinkle-html" or (errorHandler.buildDepError "Shpadoinkle-html"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compactable" or (errorHandler.buildDepError "compactable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Shpadoinkle-widgets" or (errorHandler.buildDepError "Shpadoinkle-widgets"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }