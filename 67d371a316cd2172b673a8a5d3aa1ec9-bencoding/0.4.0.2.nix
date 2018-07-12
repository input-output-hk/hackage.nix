{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bencoding";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013, Sam Truzjan";
        maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
        author = "Sam Truzjan";
        homepage = "https://github.com/cobit/bencoding";
        url = "";
        synopsis = "A library for encoding and decoding of BEncode data.";
        description = "A library for fast and easy encoding and decoding of BEncode data.";
        buildType = "Simple";
      };
      components = {
        "bencoding" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.pretty
          ];
        };
        tests = {
          "properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.bencoding
            ];
          };
        };
        benchmarks = {
          "bench-comparison" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.deepseq
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.bencoding
              hsPkgs.bencode
              hsPkgs.AttoBencode
            ];
          };
        };
      };
    }