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
      identifier = { name = "genvalidity-typed-uuid"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018-2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/typed-uuid#readme";
      url = "";
      synopsis = "Generators for Phantom-Typed version of UUID";
      description = "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-uuid" or (errorHandler.buildDepError "genvalidity-uuid"))
          (hsPkgs."typed-uuid" or (errorHandler.buildDepError "typed-uuid"))
          ];
        buildable = true;
        };
      tests = {
        "typed-uuid-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or (errorHandler.buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."genvalidity-typed-uuid" or (errorHandler.buildDepError "genvalidity-typed-uuid"))
            (hsPkgs."genvalidity-uuid" or (errorHandler.buildDepError "genvalidity-uuid"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."typed-uuid" or (errorHandler.buildDepError "typed-uuid"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "genvalidity-typed-uuid-bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-criterion" or (errorHandler.buildDepError "genvalidity-criterion"))
            (hsPkgs."genvalidity-typed-uuid" or (errorHandler.buildDepError "genvalidity-typed-uuid"))
            (hsPkgs."genvalidity-uuid" or (errorHandler.buildDepError "genvalidity-uuid"))
            (hsPkgs."typed-uuid" or (errorHandler.buildDepError "typed-uuid"))
            ];
          buildable = true;
          };
        };
      };
    }