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
      identifier = { name = "list-predicate"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Preetham Gujjula";
      maintainer = "pgujjula+list-utilities@protonmail.com";
      author = "Preetham Gujjula";
      homepage = "https://github.com/pgujjula/list-utilities#readme";
      url = "";
      synopsis = "Predicates on lists";
      description = "Please see the README on GitHub at <https://github.com/pgujjula/list-utilities/tree/master/list-predicate#readme>.";
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
            (hsPkgs."list-predicate" or (errorHandler.buildDepError "list-predicate"))
            ];
          buildable = true;
          };
        };
      };
    }