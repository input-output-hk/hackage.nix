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
      identifier = { name = "aern2-real"; version = "0.2.16.1"; };
      license = "BSD-3-Clause";
      copyright = "2015-2024 Michal Konecny";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/aern2#readme";
      url = "";
      synopsis = "Real numbers as convergent sequences of intervals";
      description = "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
          (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
        ];
        buildable = true;
      };
      tests = {
        "aern2-real-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."aern2-real" or (errorHandler.buildDepError "aern2-real"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
          ];
          buildable = true;
        };
      };
    };
  }