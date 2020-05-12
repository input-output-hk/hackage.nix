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
      specVersion = "1.8";
      identifier = { name = "uacpid"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "2009-2015 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://hub.darcs.net/dino/uacpid";
      url = "";
      synopsis = "Userspace Advanced Configuration and Power Interface\nevent daemon";
      description = "uacpid is a daemon designed to be run in userspace\nthat will monitor the local system's acpid socket\nfor hardware events. These events can then be acted\nupon by handlers with access to the user's\nenvironment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "uacpid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }