{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "ldapply"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2017, Zalora South East Asia Pte. Ltd";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Igor Pashev <pashev.igor@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "LDIF idempotent apply tool";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ldapply" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."docopt" or ((hsPkgs.pkgs-errors).buildDepError "docopt"))
            (hsPkgs."interpolatedstring-perl6" or ((hsPkgs.pkgs-errors).buildDepError "interpolatedstring-perl6"))
            (hsPkgs."LDAP" or ((hsPkgs.pkgs-errors).buildDepError "LDAP"))
            (hsPkgs."ldif" or ((hsPkgs.pkgs-errors).buildDepError "ldif"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }