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
      specVersion = "1.10";
      identifier = { name = "word"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Words of arbitrary size";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Fin" or (errorHandler.buildDepError "Fin"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."natural-induction" or (errorHandler.buildDepError "natural-induction"))
          (hsPkgs."peano" or (errorHandler.buildDepError "peano"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."word" or (errorHandler.buildDepError "word"))
            ];
          buildable = true;
          };
        };
      };
    }