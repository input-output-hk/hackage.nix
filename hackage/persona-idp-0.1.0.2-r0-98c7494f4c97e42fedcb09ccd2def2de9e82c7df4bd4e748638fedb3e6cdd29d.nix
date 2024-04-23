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
      identifier = { name = "persona-idp"; version = "0.1.0.2"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2013, 2014, 2015  Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/frasertweedale/hs-persona-idp";
      url = "";
      synopsis = "Persona (BrowserID) Identity Provider";
      description = "\npersona-idp is a simple Mozilla Persona (formerly BrowserID)\nidentity provider (IdP) intended to be run behind an HTTP\nserver providing TLS termination and user authentication.\n\nFor full documentation see\n<https://github.com/frasertweedale/hs-persona-idp>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "persona" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
            (hsPkgs."jose" or (errorHandler.buildDepError "jose"))
            (hsPkgs."persona" or (errorHandler.buildDepError "persona"))
          ];
          buildable = true;
        };
      };
    };
  }