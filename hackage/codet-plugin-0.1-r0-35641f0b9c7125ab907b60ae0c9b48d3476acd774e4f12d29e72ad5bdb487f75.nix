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
      specVersion = "2.4";
      identifier = { name = "codet-plugin"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 Oleg Grenrus, Well-Typed LLP";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "GHC type-checker plugin for solving LiftT instances from codet";
      description = "GHC type-checker plugin for solving LiftT instances from [codet](https://hackage.haskell.org/package/codet) package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."codet" or (errorHandler.buildDepError "codet"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      tests = {
        "codet-plugin-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."codet" or (errorHandler.buildDepError "codet"))
            (hsPkgs."codet-plugin" or (errorHandler.buildDepError "codet-plugin"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }