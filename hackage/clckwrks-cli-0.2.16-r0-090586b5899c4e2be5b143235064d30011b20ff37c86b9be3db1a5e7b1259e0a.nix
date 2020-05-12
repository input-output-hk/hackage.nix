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
      specVersion = "1.6";
      identifier = { name = "clckwrks-cli"; version = "0.2.16"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "a command-line interface for adminstrating some aspects of clckwrks";
      description = "This tool permits browsing of users, changing their roles, and other features.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "clckwrks-cli" = {
          depends = [
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clckwrks" or (errorHandler.buildDepError "clckwrks"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }