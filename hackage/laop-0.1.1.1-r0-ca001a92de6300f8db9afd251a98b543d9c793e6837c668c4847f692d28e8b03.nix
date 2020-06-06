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
      identifier = { name = "laop"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "2020 Armando Santos";
      maintainer = "Armando Santos <armandoifsantos@gmail.com>";
      author = "Armando Santos";
      homepage = "https://github.com/bolt12/laop";
      url = "";
      synopsis = "Matrix programming library";
      description = "Matrix programming library that uses a type-safe inductive definition\ninspired by the Linear Algebra of Programming";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "laop-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."laop" or (errorHandler.buildDepError "laop"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "laop-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."laop" or (errorHandler.buildDepError "laop"))
            ];
          buildable = true;
          };
        };
      };
    }