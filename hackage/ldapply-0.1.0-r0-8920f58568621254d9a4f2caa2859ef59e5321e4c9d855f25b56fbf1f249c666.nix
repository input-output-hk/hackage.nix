{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "ldapply"; version = "0.1.0"; };
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
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.docopt)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.LDAP)
            (hsPkgs.ldif)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }