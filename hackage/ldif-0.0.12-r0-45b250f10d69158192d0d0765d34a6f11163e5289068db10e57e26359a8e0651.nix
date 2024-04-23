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
    flags = { test = false; cmd = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ldif"; version = "0.0.12"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "radoslav.dorcik@gmail.com";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "http://rampa.sk/static/ldif.html";
      url = "";
      synopsis = "The LDAP Data Interchange Format (LDIF) tools ";
      description = "LDIF files parser implementation using Parsec.\nThe LDAP Data Interchange Format (LDIF) is defined by RFC 2849.\n\nCurrent implementation is not complete and compliant with RFC.\n\nPackage includes following command line tools:\n\n- ldifdiff - calculates delta LDIF between two content LDIF files.\n\n- ldif2html - produces HTML/browsable LDIF file.\n\n- ldifmodify - replays delta LDIF operations on content LDIF (similar to ldapmodify).\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      exes = {
        "ldifdiff" = {
          buildable = (if flags.cmd then true else false) && (if flags.test
            then false
            else true);
        };
        "ldif2html" = {
          buildable = (if flags.cmd then true else false) && (if flags.test
            then false
            else true);
        };
        "ldifmodify" = {
          buildable = (if flags.cmd then true else false) && (if flags.test
            then false
            else true);
        };
        "ldifundo" = {
          buildable = (if flags.cmd then true else false) && (if flags.test
            then false
            else true);
        };
        "ldifparse" = { buildable = if !flags.test then false else true; };
      };
      tests = {
        "ldif-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }