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
      identifier = { name = "hail"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "(c) 2017, Takt Inc.";
      maintainer = "shea.levy@takt.com";
      author = "Shea Levy";
      homepage = "https://github.com/TaktInc/hail";
      url = "";
      synopsis = "A service for pull-based continuous deployment based on hydra.";
      description = "Point hail to a hydra job, set up your nix-daemon to pull\nfrom your hydra's cache, and hail will automatically pull\nthe latest results from the job and activate them.\nSee the README for more details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hail" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."netrc" or (errorHandler.buildDepError "netrc"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          ];
          buildable = true;
        };
      };
    };
  }