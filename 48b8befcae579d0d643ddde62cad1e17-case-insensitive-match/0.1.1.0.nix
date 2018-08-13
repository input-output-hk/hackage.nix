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
        name = "case-insensitive-match";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Michael Hatfield";
      maintainer = "github@michael-hatfield.com";
      author = "Michael Hatfield";
      homepage = "https://github.com/mikehat/case-insensitive-match";
      url = "";
      synopsis = "A simplified, faster way to do case-insensitive matching.";
      description = "A way to do case-insensitive string matching and comparison with less\noverhead and more speed. The 'Data.CaseInsensitive.Eq' module offers\nsimplified syntax and optimized instances for 'ByteString', 'String' and\n'Text'. In particular, the 'ByteString' implementation assumes ISO-8859-1\n(8-bit) encoding and performs benchmark testing significantly faster than\nother implementations.";
      buildType = "Simple";
    };
    components = {
      "case-insensitive-match" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      exes = {
        "readme-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.case-insensitive-match)
            (hsPkgs.bytestring)
          ];
        };
      };
      tests = {
        "test-basics" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.case-insensitive-match)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "bench-others" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.case-insensitive-match)
            (hsPkgs.case-insensitive)
            (hsPkgs.random-strings)
            (hsPkgs.criterion)
          ];
        };
        "bench-tagsoup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.case-insensitive-match)
            (hsPkgs.criterion)
            (hsPkgs.tagsoup)
          ];
        };
      };
    };
  }