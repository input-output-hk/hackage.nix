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
      identifier = { name = "claims-x12-dsl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Charles Ellis O'Riley Jr.";
      maintainer = "ceoriley@gmail.com";
      author = "Charles Ellis O'Riley Jr.";
      homepage = "https://github.com/nagashi/claims-x12-dsl#readme";
      url = "";
      synopsis = "Type-safe DSL for healthcare claims validation and X12 processing";
      description = "A type-safe, composable DSL for healthcare claims validation with both internal (Haskell) and external (text-based) syntax. Features GADT-based rules, comprehensive validation support, and business-friendly rule definitions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "claims-x12-dsl-exe" = {
          depends = [
            (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."claims-x12-dsl" or (errorHandler.buildDepError "claims-x12-dsl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      tests = {
        "claims-x12-dsl-test" = {
          depends = [
            (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."claims-x12-dsl" or (errorHandler.buildDepError "claims-x12-dsl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }