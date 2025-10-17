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
      specVersion = "3.0";
      identifier = { name = "rebound"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2025 Stephanie Weirich, Noe De Santo";
      maintainer = "sweirich@seas.upenn.edu, ndesanto@seas.upenn.edu";
      author = "Stephanie Weirich, Noe De Santo";
      homepage = "https://github.com/sweirich/rebound";
      url = "";
      synopsis = "A variable binding library based on well-scoped de Bruijn indices.";
      description = "Please see the README on GitHub at <https://github.com/sweirich/rebound>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
        ];
        buildable = true;
      };
      tests = {
        "rebound-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rebound" or (errorHandler.buildDepError "rebound"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }