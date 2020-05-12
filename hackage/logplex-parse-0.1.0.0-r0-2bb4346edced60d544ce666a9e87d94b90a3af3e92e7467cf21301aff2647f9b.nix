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
      identifier = { name = "logplex-parse"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "keith.duncan@github.com";
      author = "Keith Duncan";
      homepage = "https://github.com/keithduncan/logplex-parse";
      url = "";
      synopsis = "Parse Heroku application/logplex documents";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logplex-parse" or (errorHandler.buildDepError "logplex-parse"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }