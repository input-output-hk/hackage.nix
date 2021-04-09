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
      specVersion = "1.22";
      identifier = { name = "assert4hs-hspec"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2021 Pawel Nosal";
      maintainer = "p.nosal1986@gmail.com";
      author = "Pawel Nosal";
      homepage = "https://github.com/paweln1986/assert4hs-hspec#readme";
      url = "";
      synopsis = "integration point of assert4hs and hspec";
      description = "Please see the README on GitHub at <https://github.com/githubuser/assert4hs-hspec#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."assert4hs-core" or (errorHandler.buildDepError "assert4hs-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
        buildable = true;
        };
      tests = {
        "assert4hs-hspec-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."assert4hs-core" or (errorHandler.buildDepError "assert4hs-core"))
            (hsPkgs."assert4hs-hspec" or (errorHandler.buildDepError "assert4hs-hspec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }