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
      identifier = { name = "list-duplicate"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Preetham Gujjula";
      maintainer = "pgujjula+list-utilities@protonmail.com";
      author = "Preetham Gujjula";
      homepage = "https://github.com/pgujjula/list-duplicate#readme";
      url = "";
      synopsis = "Group and delete duplicates from a list";
      description = "Please see the README on GitHub at <https://github.com/pgujjula/list-utilities/tree/master/list-duplicate#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."list-duplicate" or (errorHandler.buildDepError "list-duplicate"))
          ];
          buildable = true;
        };
      };
    };
  }