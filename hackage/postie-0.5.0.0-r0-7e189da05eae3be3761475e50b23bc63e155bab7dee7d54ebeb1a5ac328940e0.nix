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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "postie"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex.biehl@gmail.com";
      author = "Alex Biehl";
      homepage = "";
      url = "";
      synopsis = "SMTP server library to receive emails from within Haskell programs.";
      description = "`postie` is a little smtp server library for receiving emails. It is currently\nin a very early stage and not yet fully standard compatible although the standard\nprotocol is already supported.\n\n* At the time of writing parameters on smtp commands can not be parsed.\n\n* Handler functions need to return more detailed information to cancel a transaction.\n\n`postie` supportes hooks on key commands in an smtp session like\n\n* on connection open and close\n\n* on /MAIL FROM/ command e.g. to intercept transaction if sender is blacklisted\n\n* on /RCPT TO/ command e.g. to check if recipient is existent on your server\n\n* and many more\n\nTo run `postie` you only need to supply a function which takes a `Mail` and\nreturn `Accepted` or `Rejected`. `mailBody` is a `pipes` `Producer` which\nstreams the encoded body directly to your application code. The body is not\nparsed by `postie` since it depends on what the application wants to do with\nthe mail data. Eventually I will create a seperate package for parsing mime\nmessages with `pipes-parse` when postie becomes more stable and standard compliant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."cprng-aes" or (buildDepError "cprng-aes"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          ];
        };
      exes = {
        "postie-example-simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."postie" or (buildDepError "postie"))
            ];
          };
        "postie-example-tls" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."postie" or (buildDepError "postie"))
            ];
          };
        };
      };
    }