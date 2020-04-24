{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."rosezipper" or ((hsPkgs.pkgs-errors).buildDepError "rosezipper"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "ldifdiff" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ldif" or ((hsPkgs.pkgs-errors).buildDepError "ldif"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = (if flags.cmd then true else false) && (if flags.test
            then false
            else true);
          };
        "ldif2html" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ldif" or ((hsPkgs.pkgs-errors).buildDepError "ldif"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = (if flags.cmd then true else false) && (if flags.test
            then false
            else true);
          };
        "ldifmodify" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ldif" or ((hsPkgs.pkgs-errors).buildDepError "ldif"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = (if flags.cmd then true else false) && (if flags.test
            then false
            else true);
          };
        "ldifundo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ldif" or ((hsPkgs.pkgs-errors).buildDepError "ldif"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = (if flags.cmd then true else false) && (if flags.test
            then false
            else true);
          };
        "ldifparse" = { buildable = if !flags.test then false else true; };
        };
      tests = {
        "ldif-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }