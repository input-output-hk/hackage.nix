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
      identifier = { name = "hspec-formatter-github"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Mercury Technologies";
      maintainer = "mattp@mercury.com";
      author = "Alex Vieth, Matt von Hagen";
      homepage = "https://github.com/MercuryTechnologies/hspec-formatter-github#readme";
      url = "";
      synopsis = "A Formatter for hspec that provides Github Actions Annotations";
      description = "Please see the README on GitHub at <https://github.com/MercuryTechnologies/hspec-formatter-github#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec-api" or (errorHandler.buildDepError "hspec-api"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-api" or (errorHandler.buildDepError "hspec-api"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-formatter-github" or (errorHandler.buildDepError "hspec-formatter-github"))
          ];
          buildable = true;
        };
      };
    };
  }