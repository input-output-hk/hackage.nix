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
      specVersion = "1.18";
      identifier = {
        name = "bioinformatics-toolkit";
        version = "0.3.2";
      };
      license = "MIT";
      copyright = "(c) 2014-2017 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "A collection of bioinformatics tools";
      description = "A collection of bioinformatics tools";
      buildType = "Simple";
    };
    components = {
      "bioinformatics-toolkit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.case-insensitive)
          (hsPkgs.clustering)
          (hsPkgs.conduit-combinators)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.data-default-class)
          (hsPkgs.double-conversion)
          (hsPkgs.HsHTSLib)
          (hsPkgs.http-conduit)
          (hsPkgs.hexpat)
          (hsPkgs.IntervalMap)
          (hsPkgs.matrices)
          (hsPkgs.mtl)
          (hsPkgs.math-functions)
          (hsPkgs.parallel)
          (hsPkgs.primitive)
          (hsPkgs.split)
          (hsPkgs.statistics)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.word8)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.vector)
            (hsPkgs.data-default-class)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bioinformatics-toolkit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.unordered-containers)
            (hsPkgs.mtl)
            (hsPkgs.matrices)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bioinformatics-toolkit)
            (hsPkgs.random)
            (hsPkgs.criterion)
            (hsPkgs.clustering)
            (hsPkgs.bytestring)
            (hsPkgs.data-default-class)
            (hsPkgs.conduit)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }