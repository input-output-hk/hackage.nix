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
      identifier = { name = "list-filter"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Preetham Gujjula";
      maintainer = "pgujjula+list-utilities@protonmail.com";
      author = "Preetham Gujjula";
      homepage = "https://github.com/pgujjula/list-utilities#readme";
      url = "";
      synopsis = "Special takes and drops on lists";
      description = "Please see the README on GitHub at <https://github.com/pgujjula/list-utilities/tree/master/list-filter#readme>.";
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
            (hsPkgs."list-filter" or (errorHandler.buildDepError "list-filter"))
          ];
          buildable = true;
        };
      };
    };
  }