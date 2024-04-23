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
      identifier = { name = "hsendxmpp"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "zl29ah@gmail.com";
      author = "Sergey Alirzaev";
      homepage = "";
      url = "";
      synopsis = "sendxmpp clone, sending XMPP messages via CLI";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsendxmpp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pontarius-xmpp" or (errorHandler.buildDepError "pontarius-xmpp"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."string-class" or (errorHandler.buildDepError "string-class"))
          ];
          buildable = true;
        };
      };
    };
  }