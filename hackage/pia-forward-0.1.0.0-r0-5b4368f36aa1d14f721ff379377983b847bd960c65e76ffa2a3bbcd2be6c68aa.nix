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
      identifier = { name = "pia-forward"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright 2015 Echo Nolan";
      maintainer = "echo@echonolan.net";
      author = "Echo Nolan";
      homepage = "https://github.com/enolan/pia-forward";
      url = "";
      synopsis = "Set up port forwarding with the Private Internet Access\nVPN service.";
      description = "Sets up and maintains a forwarded port. See https://www.privateinternetaccess.com/forum/discussion/180/port-forwarding-without-the-application-advanced-users.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pia-forward" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            ];
          buildable = true;
          };
        };
      };
    }