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
      identifier = { name = "assert4hs"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "2021 Pawel Nosal";
      maintainer = "p.nosal1986@gmail.com";
      author = "Pawel Nosal";
      homepage = "https://github.com/paweln1986/assert4hs#readme";
      url = "";
      synopsis = "A set of assertion for writing more readable tests cases";
      description = "Please see the README on GitHub at <https://github.com/paweln1986/assert4hs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."pretty-diff" or (errorHandler.buildDepError "pretty-diff"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "assert4hs-test" = {
          depends = [
            (hsPkgs."assert4hs" or (errorHandler.buildDepError "assert4hs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."pretty-diff" or (errorHandler.buildDepError "pretty-diff"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }