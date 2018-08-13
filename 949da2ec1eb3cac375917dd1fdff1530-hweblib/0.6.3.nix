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
        name = "hweblib";
        version = "0.6.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iricanaycan@gmail.com";
      author = "Aycan iRiCAN";
      homepage = "http://github.com/aycanirican/hweblib";
      url = "";
      synopsis = "Haskell Web Library";
      description = "The library includes attoparsec based incremental parsers for\nrfc2616 (http) and rfc3986 (uri), rfc2045-46 (mime). The package\nname will subject to change due to broad range of rfc coverage.";
      buildType = "Simple";
    };
    components = {
      "hweblib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.attoparsec)
            (hsPkgs.HUnit)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.attoparsec)
            (hsPkgs.criterion)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }