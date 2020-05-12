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
      identifier = { name = "radium"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/radium";
      url = "";
      synopsis = "Chemistry";
      description = "This library simplifies writing application for chemistry. Currently includes:\n\n* Element - Periodic table and basic information about elements\n\n* Formula - Formula parser. Formula can be provided as Ce3FeO2";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }