{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-smsc-ru";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "https://github.com/NCrashed/servant-smsc-ru#readme";
        url = "";
        synopsis = "Servant client for smsc.ru service for sending SMS to cell phones";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        servant-smsc-ru = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          test-servant-smsc-ru = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-text
              hsPkgs.servant-smsc-ru
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.bytestring
            ];
          };
        };
      };
    }