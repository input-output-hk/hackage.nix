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
      identifier = { name = "refinery"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Reed Mullanix";
      maintainer = "reedmullanix@gmail.com";
      author = "Reed Mullanix";
      homepage = "https://github.com/totbwf/refinery#readme";
      url = "";
      synopsis = "Toolkit for building proof automation systems";
      description = "Please see the README on GitHub at <https://github.com/githubuser/refinery#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "refinery-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."refinery" or (errorHandler.buildDepError "refinery"))
          ];
          buildable = true;
        };
      };
    };
  }