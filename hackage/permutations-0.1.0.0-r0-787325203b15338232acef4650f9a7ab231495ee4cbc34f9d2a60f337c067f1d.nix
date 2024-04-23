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
      identifier = { name = "permutations"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Permutations of finite sets";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Fin" or (errorHandler.buildDepError "Fin"))
          (hsPkgs."alg" or (errorHandler.buildDepError "alg"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."natural-induction" or (errorHandler.buildDepError "natural-induction"))
          (hsPkgs."peano" or (errorHandler.buildDepError "peano"))
          (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
          (hsPkgs."util" or (errorHandler.buildDepError "util"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."Fin" or (errorHandler.buildDepError "Fin"))
            (hsPkgs."alg" or (errorHandler.buildDepError "alg"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-induction" or (errorHandler.buildDepError "natural-induction"))
            (hsPkgs."peano" or (errorHandler.buildDepError "peano"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
            (hsPkgs."permutations" or (errorHandler.buildDepError "permutations"))
          ];
          buildable = true;
        };
      };
    };
  }