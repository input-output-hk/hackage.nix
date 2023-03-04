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
      specVersion = "2.2";
      identifier = { name = "polysemy-hasql-test"; version = "0.0.1.0"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2023 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "";
      url = "";
      synopsis = "Test utilities for polysemy-hasql";
      description = "See https://hackage.haskell.org/package/polysemy-hasql-test/docs/Polysemy-Hasql-Test.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-db" or (errorHandler.buildDepError "polysemy-db"))
          (hsPkgs."polysemy-hasql" or (errorHandler.buildDepError "polysemy-hasql"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-test" or (errorHandler.buildDepError "polysemy-test"))
          (hsPkgs."prelate" or (errorHandler.buildDepError "prelate"))
          (hsPkgs."sqel" or (errorHandler.buildDepError "sqel"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      tests = {
        "polysemy-hasql-test-unit" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
            (hsPkgs."exon" or (errorHandler.buildDepError "exon"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-db" or (errorHandler.buildDepError "polysemy-db"))
            (hsPkgs."polysemy-hasql" or (errorHandler.buildDepError "polysemy-hasql"))
            (hsPkgs."polysemy-hasql-test" or (errorHandler.buildDepError "polysemy-hasql-test"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-test" or (errorHandler.buildDepError "polysemy-test"))
            (hsPkgs."prelate" or (errorHandler.buildDepError "prelate"))
            (hsPkgs."sqel" or (errorHandler.buildDepError "sqel"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            ];
          buildable = true;
          };
        };
      };
    }