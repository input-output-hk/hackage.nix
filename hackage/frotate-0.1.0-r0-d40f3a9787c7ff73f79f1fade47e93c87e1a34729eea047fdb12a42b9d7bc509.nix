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
      identifier = { name = "frotate"; version = "0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pashev.igor@gmail.com";
      author = "Igor Pashev";
      homepage = "";
      url = "";
      synopsis = "Advanced rotation of backups and other things";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "frotate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }