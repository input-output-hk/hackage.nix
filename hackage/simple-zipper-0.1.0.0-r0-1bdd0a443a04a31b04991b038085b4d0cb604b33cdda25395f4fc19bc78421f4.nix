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
      specVersion = "1.10";
      identifier = { name = "simple-zipper"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Daniel Waterworth";
      maintainer = "da.waterworth@gmail.com";
      author = "Daniel Waterworth";
      homepage = "https://github.com/DanielWaterworth/simple-zipper";
      url = "";
      synopsis = "Zippers made slightly easier";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
      tests = {
        "simple-zipper-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simple-zipper" or (errorHandler.buildDepError "simple-zipper"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
          buildable = true;
        };
      };
    };
  }