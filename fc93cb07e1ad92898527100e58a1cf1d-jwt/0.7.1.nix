{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "jwt";
          version = "0.7.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "stefan@saasen.me";
        author = "Stefan Saasen";
        homepage = "https://bitbucket.org/ssaasen/haskell-jwt";
        url = "";
        synopsis = "JSON Web Token (JWT) decoding and encoding";
        description = "JSON Web Token (JWT) is a compact URL-safe means of representing claims to be transferred between two parties.\n\nTo get started, see the documentation for the \"Web.JWT\" module.";
        buildType = "Simple";
      };
      components = {
        "jwt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cryptonite
            hsPkgs.memory
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.scientific
            hsPkgs.data-default
            hsPkgs.http-types
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.semigroups
            hsPkgs.network-uri
          ];
        };
        tests = {
          "testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.lens-aeson
              hsPkgs.lens
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.cryptonite
              hsPkgs.memory
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.scientific
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.data-default
              hsPkgs.http-types
              hsPkgs.time
              hsPkgs.vector
              hsPkgs.semigroups
              hsPkgs.network-uri
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.jwt
              hsPkgs.doctest
            ];
          };
        };
      };
    }