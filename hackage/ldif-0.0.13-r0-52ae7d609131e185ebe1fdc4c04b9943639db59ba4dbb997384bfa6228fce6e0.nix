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
    flags = { test = false; cmd = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ldif"; version = "0.0.13"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "radoslav.dorcik@gmail.com";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "http://rampa.sk/static/ldif.html";
      url = "";
      synopsis = "The LDAP Data Interchange Format (LDIF) tools";
      description = "LDIF files parser implementation using Parsec.\nThe LDAP Data Interchange Format (LDIF) is defined by RFC 2849.\n\nCurrent implementation is not complete and compliant with RFC.\n\nPackage includes following command line tools:\n\n- ldifdiff - calculates delta LDIF between two content LDIF files.\n\n- ldif2html - produces HTML/browsable LDIF file.\n\n- ldifmodify - replays delta LDIF operations on content LDIF (similar to ldapmodify).\n\n- ldifundo - produces delta LDIF which rollbacks operations in input LDIF.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        };
      exes = {
        "ldifdiff" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ldif" or (buildDepError "ldif"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "ldif2html" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ldif" or (buildDepError "ldif"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "ldifmodify" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ldif" or (buildDepError "ldif"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "ldifundo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ldif" or (buildDepError "ldif"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "ldifparse" = {};
        };
      tests = {
        "ldif-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }