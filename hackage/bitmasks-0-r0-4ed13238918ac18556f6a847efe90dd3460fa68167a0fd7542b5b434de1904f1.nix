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
      identifier = { name = "bitmasks"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alice Rixte 2025";
      maintainer = "alice.rixte@u-bordeaux.fr";
      author = "Alice Rixte";
      homepage = "https://github.com/AliceRixte/bitmasks#readme";
      url = "";
      synopsis = "Bitmasks for efficient storing of boolean flags";
      description = "Please see the README on GitHub at <https://github.com/AliceRixte/bitmasks#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "bitmasks-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitmasks" or (errorHandler.buildDepError "bitmasks"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }