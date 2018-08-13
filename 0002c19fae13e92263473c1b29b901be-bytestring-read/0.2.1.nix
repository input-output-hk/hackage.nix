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
        name = "bytestring-read";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/bytestring-read";
      url = "";
      synopsis = "fast ByteString to number converting library";
      description = "benchmark: <http://philopon.github.io/bytestring-read/bench.html>";
      buildType = "Simple";
    };
    components = {
      "bytestring-read" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.types-compat)
        ];
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring-read)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring-read)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.criterion)
            (hsPkgs.scientific)
            (hsPkgs.attoparsec)
          ];
        };
      };
    };
  }