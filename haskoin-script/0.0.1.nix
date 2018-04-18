{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "haskoin-script";
          version = "0.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "plaprade+hackage@gmail.com";
        author = "Philippe Laprade";
        homepage = "http://github.com/plaprade/haskoin-script";
        url = "";
        synopsis = "Implementation of Bitcoin script parsing and evaluation";
        description = "This package provides functions for parsing and evaluating bitcoin\ntransaction scripts. Data types are provided for building and\ndeconstructing all of the standard input and output script types.";
        buildType = "Simple";
      };
      components = {
        haskoin-script = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.haskoin-protocol
            hsPkgs.haskoin-crypto
            hsPkgs.haskoin-util
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          test-haskoin-script = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.haskoin-protocol
              hsPkgs.haskoin-crypto
              hsPkgs.haskoin-util
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }