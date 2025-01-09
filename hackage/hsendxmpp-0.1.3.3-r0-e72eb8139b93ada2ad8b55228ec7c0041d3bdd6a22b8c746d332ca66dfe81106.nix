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
      specVersion = "3.0";
      identifier = { name = "hsendxmpp"; version = "0.1.3.3"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "zl29ah@gmail.com";
      author = "Sergey Alirzaev";
      homepage = "";
      url = "";
      synopsis = "sendxmpp clone, sending XMPP messages via CLI";
      description = "It aims to be a drop-in replacement regarding the CLI flags. It is user-friendlier, handles errors better and, unlike sendxmpp, it supports modern authentication and encryption schemes.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsendxmpp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pontarius-xmpp" or (errorHandler.buildDepError "pontarius-xmpp"))
            (hsPkgs."pontarius-xmpp-extras" or (errorHandler.buildDepError "pontarius-xmpp-extras"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."string-class" or (errorHandler.buildDepError "string-class"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          ];
          buildable = true;
        };
      };
    };
  }