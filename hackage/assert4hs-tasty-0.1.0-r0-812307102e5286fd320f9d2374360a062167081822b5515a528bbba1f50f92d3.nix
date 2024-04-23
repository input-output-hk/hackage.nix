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
      identifier = { name = "assert4hs-tasty"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2021 Pawel Nosal";
      maintainer = "p.nosal1986@gmail.com";
      author = "Pawel Nosal";
      homepage = "https://github.com/paweln1986/assert4hs-tasty#readme";
      url = "";
      synopsis = "Provider for tasty runner to run assert4hs tests";
      description = "Please see the README on GitHub at <https://github.com/paweln1986/assert4hs-tasty#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."assert4hs-core" or (errorHandler.buildDepError "assert4hs-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
        ];
        buildable = true;
      };
      tests = {
        "assert4hs-tasty-test" = {
          depends = [
            (hsPkgs."assert4hs-core" or (errorHandler.buildDepError "assert4hs-core"))
            (hsPkgs."assert4hs-tasty" or (errorHandler.buildDepError "assert4hs-tasty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
    };
  }