{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ldap-client"; version = "0.3.0"; };
      license = "BSD-2-Clause";
      copyright = "2015 Matvey Aksenov, 2019 AlasConnect LLC";
      maintainer = "matvey.aksenov@gmail.com, software@alasconnect.com";
      author = "Matvey Aksenov, AlasConnect LLC";
      homepage = "https://github.com/alasconnect/ldap-client";
      url = "";
      synopsis = "Pure Haskell LDAP Client Library";
      description = "Pure Haskell LDAP client library implementing (the parts of) RFC 4511.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.asn1-encoding)
          (hsPkgs.asn1-types)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.fail)
          (hsPkgs.network)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.text)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.ldap-client)
            (hsPkgs.process)
            (hsPkgs.semigroups)
            ];
          };
        };
      };
    }