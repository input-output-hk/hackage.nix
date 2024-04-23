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
      identifier = { name = "postmaster"; version = "0.3.3"; };
      license = "LicenseRef-GPL";
      copyright = "Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "https://github.com/peti/postmaster";
      url = "";
      synopsis = "Postmaster ESMTP Server";
      description = "Postmaster implements an ESMTP server. Given a configuration, it starts up\nand listens for incoming SMTP connections, handles them, and pipes the\naccepted e-mail messages into an arbitrary local mailer of your choice. A\ngood local mailer is Procmail. Beyond that, you can configure and modify\nevery little step of the SMTP transaction. All the real work is done\nthrough call-back functions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "postmaster" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
            (hsPkgs."hsdns" or (errorHandler.buildDepError "hsdns"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }