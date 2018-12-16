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
      specVersion = "1.10.0";
      identifier = {
        name = "DPutils";
        version = "0.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2016-2018";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2016-2018";
      homepage = "https://github.com/choener/DPutils";
      url = "";
      synopsis = "utilities for DP";
      description = "Small set of utility functions\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.kan-extensions)
          (hsPkgs.parallel)
          (hsPkgs.pipes)
          (hsPkgs.QuickCheck)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.stringsearch)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-parse)
            (hsPkgs.QuickCheck)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.vector)
            (hsPkgs.DPutils)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.vector)
            (hsPkgs.DPutils)
          ];
        };
        "streaming" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.timeit)
            (hsPkgs.DPutils)
          ];
        };
      };
    };
  }