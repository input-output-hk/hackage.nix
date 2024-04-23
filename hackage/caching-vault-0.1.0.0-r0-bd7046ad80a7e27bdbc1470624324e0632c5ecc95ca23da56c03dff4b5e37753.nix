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
      identifier = { name = "caching-vault"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@thiemann.at>";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/caching-vault#readme";
      url = "";
      synopsis = "A vault-style cache implementation";
      description = "Allows a central cache for arbitrary values with expiry dates";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "caching-vault-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caching-vault" or (errorHandler.buildDepError "caching-vault"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timespan" or (errorHandler.buildDepError "timespan"))
          ];
          buildable = true;
        };
      };
    };
  }