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
      identifier = { name = "rec-smallarray"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Xy Ren";
      maintainer = "xy.r@outlook.com";
      author = "Xy Ren";
      homepage = "https://github.com/re-xyr/rec-smallarray#readme";
      url = "";
      synopsis = "SmallArray-based extensible records for small-scale fast reads";
      description = "Please see the README on GitHub at <https://github.com/re-xyr/rec-smallarray#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      tests = {
        "rec-smallarray-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."rec-smallarray" or (errorHandler.buildDepError "rec-smallarray"))
          ];
          buildable = true;
        };
      };
    };
  }