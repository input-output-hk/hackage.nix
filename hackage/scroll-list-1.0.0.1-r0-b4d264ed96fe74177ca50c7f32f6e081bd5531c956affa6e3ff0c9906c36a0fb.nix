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
      identifier = { name = "scroll-list"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Felipe Santa-Cruz";
      maintainer = "fesanmar@gmail.com";
      author = "Felipe Santa-Cruz";
      homepage = "https://github.com/fesanmar/scroll-list#readme";
      url = "";
      synopsis = "This package provides functions for relocate an item within a list.";
      description = "Please see the README on GitHub at <https://github.com/fesanmar/scroll-list#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "scroll-list-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."scroll-list" or (errorHandler.buildDepError "scroll-list"))
            ];
          buildable = true;
          };
        };
      };
    }