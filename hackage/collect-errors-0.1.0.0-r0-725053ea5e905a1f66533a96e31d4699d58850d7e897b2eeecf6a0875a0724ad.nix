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
      identifier = { name = "collect-errors"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Michal Konecny";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/collect-errors#readme";
      url = "";
      synopsis = "Error monad with a Float instance";
      description = "Please see the README on GitHub at <https://github.com/michalkonecny/collect-errors#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }