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
      identifier = { name = "assert4hs-core"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2021 Pawel Nosal";
      maintainer = "p.nosal1986@gmail.com";
      author = "Pawel Nosal";
      homepage = "https://github.com/paweln1986/assert4hs-core#readme";
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
        "assert4hs-core-test" = {
          depends = [
            (hsPkgs."assert4hs-core" or (errorHandler.buildDepError "assert4hs-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."pretty-diff" or (errorHandler.buildDepError "pretty-diff"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }