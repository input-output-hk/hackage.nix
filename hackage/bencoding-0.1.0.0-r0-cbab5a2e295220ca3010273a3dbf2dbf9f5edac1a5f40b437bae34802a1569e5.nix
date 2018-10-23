{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bencoding";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2013, Sam T.";
      maintainer = "Sam T. <pxqr.sta@gmail.com>";
      author = "Sam T.";
      homepage = "https://github.com/pxqr/bencoding";
      url = "";
      synopsis = "A library for encoding and decoding of BEncode data.";
      description = "A library for encoding and decoding of BEncode data.\n\n[/Release notes/]\n\n* /0.1.0.0:/ Initial version.";
      buildType = "Simple";
    };
    components = {
      "bencoding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.pretty)
        ];
      };
      exes = {
        "pp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bencoding)
          ];
        };
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
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