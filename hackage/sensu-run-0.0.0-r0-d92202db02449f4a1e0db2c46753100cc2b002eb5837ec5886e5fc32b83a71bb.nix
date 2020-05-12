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
      identifier = { name = "sensu-run"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2017 Mitsutoshi Aoe";
      maintainer = "maoe@foldr.in";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/sensu-run#readme";
      url = "";
      synopsis = "A tool to send command execution results to Sensu";
      description = "@sensu-run@ is a command line tool to send command execution results to Sensu\nmonitoring server.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sensu-run" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            ];
          buildable = true;
          };
        };
      };
    }