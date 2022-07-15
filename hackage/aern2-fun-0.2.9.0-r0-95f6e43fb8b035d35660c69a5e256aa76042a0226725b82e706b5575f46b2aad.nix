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
      identifier = { name = "aern2-fun"; version = "0.2.9.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2021 Michal Konecny, Eike Neumann";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny, Eike Neumann";
      homepage = "https://github.com/michalkonecny/aern2#readme";
      url = "";
      synopsis = "Generic operations for real functions";
      description = "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
          (hsPkgs."aern2-real" or (errorHandler.buildDepError "aern2-real"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          ];
        buildable = true;
        };
      };
    }