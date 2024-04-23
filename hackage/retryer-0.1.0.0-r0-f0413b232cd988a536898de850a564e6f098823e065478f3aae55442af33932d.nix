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
      identifier = { name = "retryer"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "dgonyeo@csh.rit.edu";
      author = "Derek Gonyeo";
      homepage = "https://github.com/dgonyeo/retryer";
      url = "";
      synopsis = "Small haskell app that takes a command, and continually re-runs it until it exits successfully";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "retryer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
    };
  }