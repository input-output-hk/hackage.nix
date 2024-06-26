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
      identifier = { name = "rando"; version = "0.0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Easy-to-use randomness for livecoding";
      description = "Easy-to-use randomness for livecoding.\n\nThe goal is to provide the simplest possible experience, e.g.\n\n> >>> pickOne [\"lemon\", \"lime\", \"strawberry\"]\n> \"lime\" :: IO String\n\n> >>> flipCoin\n> True\n\n> >>> shuffle [1..5]\n> [2,4,1,3,5]\n\nThis library is in flux: names will change, types will change, functions\nwill appear and disappear and move between modules!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "rando-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."microspec" or (errorHandler.buildDepError "microspec"))
          ];
          buildable = true;
        };
      };
    };
  }