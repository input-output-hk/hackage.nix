{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "siphon";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/colonnade#readme";
        url = "";
        synopsis = "Generic types and functions for columnar encoding and decoding";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        siphon = {
          depends  = [
            hsPkgs.base
            hsPkgs.colonnade
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.contravariant
            hsPkgs.vector
            hsPkgs.pipes
            hsPkgs.attoparsec
          ];
        };
        tests = {
          siphon-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.either
              hsPkgs.siphon
              hsPkgs.colonnade
              hsPkgs.contravariant
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.pipes
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }