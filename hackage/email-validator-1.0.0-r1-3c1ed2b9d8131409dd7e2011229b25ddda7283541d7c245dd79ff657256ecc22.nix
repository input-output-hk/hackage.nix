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
      specVersion = "1.8";
      identifier = { name = "email-validator"; version = "1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "http://michael.orlitzky.com/code/email-validator.xhtml";
      url = "";
      synopsis = "Perform basic syntax and deliverability checks on email addresses.";
      description = "Validate an email address using three techniques:\n\n* Ensuring that the length of local and domain parts is within the\nRFC-specified limits.\n\n* A syntax check using a regular expression, or the full RFC 5322\ngrammar (see the @--rfc5322@ option).\n\n* Confirmation of the existence of an @MX@ record for the domain part of\nthe address. This is not required; in fact many domains accept mail\nvia an @A@ record for e.g. example.com which is used in lieu of an @MX@\nrecord. This behavior can be controlled via the @--accept-a@ flag.\n\nThese checks are performed in parallel using the number of available\nthreads. To increase the number of threads, you can pass the\nappropriate flag to the GHC runtime.\n\nThis will set the number of threads to 25:\n\n@\n\$ email-validator +RTS -N25 < addresses.csv\n@\n\n/Input/\n\nThe @input@ (via stdin) should be a list of email addresses,\none per line. Empty lines will be ignored.\n\n/Output/\n\nValid email addresses will be written to stdout, one per line.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "email-validator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."dns" or (buildDepError "dns"))
            (hsPkgs."email-validate" or (buildDepError "email-validate"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
            (hsPkgs."pcre-light" or (buildDepError "pcre-light"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."dns" or (buildDepError "dns"))
            (hsPkgs."email-validate" or (buildDepError "email-validate"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
            (hsPkgs."pcre-light" or (buildDepError "pcre-light"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        };
      };
    }