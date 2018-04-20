{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ldap-client";
          version = "0.2.0";
        };
        license = "BSD-2-Clause";
        copyright = "2015 Matvey Aksenov";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "https://supki.github.io/ldap-client";
        url = "";
        synopsis = "Pure Haskell LDAP Client Library";
        description = "Pure Haskell LDAP client library implementing (the parts of) RFC 4511.";
        buildType = "Simple";
      };
      components = {
        ldap-client = {
          depends  = [
            hsPkgs.asn1-encoding
            hsPkgs.asn1-types
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.connection
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.ldap-client
              hsPkgs.process
              hsPkgs.semigroups
            ];
          };
        };
      };
    }