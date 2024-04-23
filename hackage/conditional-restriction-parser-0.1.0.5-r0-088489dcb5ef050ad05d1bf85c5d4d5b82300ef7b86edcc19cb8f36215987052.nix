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
      identifier = {
        name = "conditional-restriction-parser";
        version = "0.1.0.5";
      };
      license = "AGPL-3.0-only";
      copyright = "2022 IFS Institute for Software, Eastern Switzerland University of Applied Sciences (OST)";
      maintainer = "lukas.buchli@ost.ch";
      author = "Lukas Buchli";
      homepage = "https://github.com/geometalab/conditional-restriction-parser#readme";
      url = "";
      synopsis = "Parser and interpreter of OpenStreetMap conditional restriction values";
      description = "Please see the README on GitHub at <https://github.com/geometalab/conditional-restriction-parser#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
        ];
        buildable = true;
      };
      exes = {
        "conditional-restriction-parser-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."conditional-restriction-parser" or (errorHandler.buildDepError "conditional-restriction-parser"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
          ];
          buildable = true;
        };
      };
      tests = {
        "conditional-restriction-parser-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."conditional-restriction-parser" or (errorHandler.buildDepError "conditional-restriction-parser"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }