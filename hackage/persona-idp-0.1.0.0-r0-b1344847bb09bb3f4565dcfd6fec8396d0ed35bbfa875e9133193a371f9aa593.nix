{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persona-idp"; version = "0.1.0.0"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
            (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
            (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pem" or ((hsPkgs.pkgs-errors).buildDepError "pem"))
            (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
            (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
            (hsPkgs."jose" or ((hsPkgs.pkgs-errors).buildDepError "jose"))
            (hsPkgs."persona" or ((hsPkgs.pkgs-errors).buildDepError "persona"))
            ];
          buildable = true;
          };
        };
      };
    }