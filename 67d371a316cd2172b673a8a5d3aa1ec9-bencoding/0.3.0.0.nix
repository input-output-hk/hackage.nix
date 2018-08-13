{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bencoding";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam Truzjan";
      maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/cobit/bencoding";
      url = "";
      synopsis = "A library for encoding and decoding of BEncode data.";
      description = "A library for encoding and decoding of BEncode data.\n\nSee NEWS.md for release notes.";
      buildType = "Simple";
    };
    components = {
      "bencoding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.pretty)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.bencoding)
          ];
        };
      };
      benchmarks = {
        "bench-comparison" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.bencoding)
            (hsPkgs.bencode)
            (hsPkgs.AttoBencode)
          ];
        };
      };
    };
  }