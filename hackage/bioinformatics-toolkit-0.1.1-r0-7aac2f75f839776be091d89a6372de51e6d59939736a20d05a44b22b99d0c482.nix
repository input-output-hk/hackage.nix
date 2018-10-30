{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bioinformatics-toolkit";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2014 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "A collection of bioinformatics tools";
      description = "A collection of bioinformatics tools";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bbi)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.colour)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.double-conversion)
          (hsPkgs.clustering)
          (hsPkgs.http-conduit)
          (hsPkgs.hexpat)
          (hsPkgs.matrices)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.primitive)
          (hsPkgs.palette)
          (hsPkgs.samtools)
          (hsPkgs.split)
          (hsPkgs.statistics)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.word8)
          (hsPkgs.IntervalMap)
        ];
      };
      exes = {
        "mkindex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bioinformatics-toolkit)
            (hsPkgs.shelly)
            (hsPkgs.text)
          ];
        };
        "viewSeq" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bioinformatics-toolkit)
            (hsPkgs.bytestring)
          ];
        };
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
            (hsPkgs.unordered-containers)
            (hsPkgs.mtl)
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