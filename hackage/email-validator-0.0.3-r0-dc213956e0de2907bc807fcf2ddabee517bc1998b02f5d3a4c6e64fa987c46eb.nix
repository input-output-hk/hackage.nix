{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "email-validator"; version = "0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "";
      url = "";
      synopsis = "Perform basic syntax and deliverability checks on email addresses.";
      description = "Validate an email address using three techniques:\n\n* Ensuring that the length of local and domain parts is within the\nRFC-specified limits.\n\n* A syntax check using a regular expression, or the full RFC 5322\ngrammar (see the @--rfc5322@ option).\n\n* Confirmation of the existence of an @MX@ record for the domain part of\nthe address. This is not required; in fact many domains accept mail\nvia an @A@ record for e.g. example.com which is used in lieu of an @MX@\nrecord. This behavior can be controlled via the @--accept-a@ flag.\n\nThese checks are performed in parallel using the number of available\nthreads. To increase the number of threads, you can pass the\nappropriate flag to the GHC runtime.\n\nThis will set the number of threads to 25:\n\n@\n\$ email-validator -i addresses.csv +RTS -N25\n@\n\n/Input/\n\nThe @input@ file (default: stdin) should be a list of email addresses,\none per line. Empty lines will be ignored.\n\n/Output/\n\nValid email addresses will be written to the output file (default:\nstdout), one per line.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "email-validator" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.dns)
            (hsPkgs.email-validate)
            (hsPkgs.HUnit)
            (hsPkgs.parallel-io)
            (hsPkgs.pcre-light)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.dns)
            (hsPkgs.email-validate)
            (hsPkgs.HUnit)
            (hsPkgs.parallel-io)
            (hsPkgs.pcre-light)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }