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
      specVersion = "1.22";
      identifier = { name = "wolf"; version = "0.3.42"; };
      license = "MIT";
      copyright = "Copyright (C) 2015-2016 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/wolf";
      url = "";
      synopsis = "Amazon Simple Workflow Service Wrapper.";
      description = "Wolf is a wrapper around Amazon Simple Workflow Service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-swf" or (errorHandler.buildDepError "amazonka-swf"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."preamble" or (errorHandler.buildDepError "preamble"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "wolf-actor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wolf" or (errorHandler.buildDepError "wolf"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            ];
          buildable = true;
          };
        "wolf-decider" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wolf" or (errorHandler.buildDepError "wolf"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            ];
          buildable = true;
          };
        "wolf-counter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wolf" or (errorHandler.buildDepError "wolf"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            ];
          buildable = true;
          };
        "shake-wolf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shakers" or (errorHandler.buildDepError "shakers"))
            ];
          buildable = true;
          };
        };
      };
    }