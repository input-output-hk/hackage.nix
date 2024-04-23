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
      identifier = { name = "postmaster"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/postmaster";
      url = "";
      synopsis = "Postmaster ESMTP Server";
      description = "Postmaster implements an ESMTP server. Given a configuration,\nit starts up and listens for incoming SMTP connections, handles\nthem, and pipes the accepted e-mail messages into an arbitrary\nlocal mailer of your choice. A good local mailer is Procmail.\nBeyond that, you can configure and modify every little step\nof the SMTP transaction. All the real work is done through\ncall-back functions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "postmaster" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
            (hsPkgs."hsdns" or (errorHandler.buildDepError "hsdns"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
          ];
          libs = [
            (pkgs."adns" or (errorHandler.sysDepError "adns"))
            (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
          ];
          buildable = true;
        };
      };
    };
  }