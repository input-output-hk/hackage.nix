{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "jwt";
          version = "0.1.0";
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
        jwt = {
          depends  = [
            hsPkgs.base
            hsPkgs.cryptohash
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.scientific
            hsPkgs.data-default
            hsPkgs.http-types
            hsPkgs.network
          ];
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.cryptohash
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.scientific
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.data-default
              hsPkgs.http-types
              hsPkgs.network
            ];
          };
        };
      };
    }