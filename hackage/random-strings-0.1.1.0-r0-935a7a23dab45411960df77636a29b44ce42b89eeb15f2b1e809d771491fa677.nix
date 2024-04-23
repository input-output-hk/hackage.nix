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
      identifier = { name = "random-strings"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Michael Hatfield";
      maintainer = "github@michael-hatfield.com";
      author = "Michael Hatfield";
      homepage = "https://github.com/mikehat/random-strings";
      url = "";
      synopsis = "Generate random strings with specific qualities";
      description = "Useful for generating test/benchmark data, the 'Test.RandomStrings' module\nprovides functions for generating random character strings in the ASCII\nrange.  You can specify probabilities for the alphabet-range chars and\ncapital case characters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      exes = {
        "readme-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random-strings" or (errorHandler.buildDepError "random-strings"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-basics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random-strings" or (errorHandler.buildDepError "random-strings"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
        "test-randomness" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random-strings" or (errorHandler.buildDepError "random-strings"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }