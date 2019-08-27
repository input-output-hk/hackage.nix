let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pem" or (buildDepError "pem"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."x509" or (buildDepError "x509"))
            (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
            (hsPkgs."jose" or (buildDepError "jose"))
            (hsPkgs."persona" or (buildDepError "persona"))
            ];
          };
        };
      };
    }