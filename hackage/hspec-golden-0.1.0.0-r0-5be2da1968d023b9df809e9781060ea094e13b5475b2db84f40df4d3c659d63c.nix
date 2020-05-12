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
      identifier = { name = "hspec-golden"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Stack Builders Inc";
      maintainer = "cmotoche@stackbuilders.com";
      author = "Stack Builders";
      homepage = "https://github.com/stackbuilders/hspec-golden#readme";
      url = "";
      synopsis = "Golden tests for hspec";
      description = "Please see the README on GitHub at <https://github.com/stackbuilders/hspec-golden#README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          ];
        buildable = true;
        };
      exes = {
        "hgold" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."simple-get-opt" or (errorHandler.buildDepError "simple-get-opt"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec-golden-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            ];
          buildable = true;
          };
        };
      };
    }