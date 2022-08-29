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
      identifier = { name = "email-validator"; version = "1.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "http://michael.orlitzky.com/code/email-validator.xhtml";
      url = "";
      synopsis = "Perform basic syntax and deliverability checks on email addresses.";
      description = "Validate an email address using three techniques:\n\n  * Ensuring that the length of local and domain parts is within the\n    RFC-specified limits.\n\n  * A syntax check using a regular expression, or the full RFC 5322\n    grammar (see the @--rfc5322@ option).\n\n  * Confirmation of the existence of an @MX@ record for the domain part of\n    the address. This is not required; in fact many domains accept mail\n    via an @A@ record for e.g. example.com which is used in lieu of an @MX@\n    record. This behavior can be controlled via the @--accept-a@ flag.\n\nThese checks are performed in parallel using the number of available\nthreads. To increase the number of threads, you can pass the\nappropriate flag to the GHC runtime.\n\nThis will set the number of threads to 25:\n\n@\n$ email-validator +RTS -N25 < addresses.csv\n@\n\n/Input/\n\nThe @input@ (via stdin) should be a list of email addresses,\none per line. Empty lines will be ignored.\n\n/Output/\n\nValid email addresses will be written to stdout, one per line.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "email-validator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }