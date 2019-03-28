{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "DPutils"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2016-2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2016-2019";
      homepage = "https://github.com/choener/DPutils";
      url = "";
      synopsis = "utilities for DP";
      description = "Small set of utility functions, as well as the base types for\ngeneric backtracing.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.criterion)
          (hsPkgs.kan-extensions)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-parse)
          (hsPkgs.primitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.stringsearch)
          (hsPkgs.smallcheck)
          (hsPkgs.tasty)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.tasty-smallcheck)
          (hsPkgs.tasty-th)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.kan-extensions)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-parse)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.stringsearch)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.DPutils)
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.kan-extensions)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-parse)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.stringsearch)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        "streaming" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.kan-extensions)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-parse)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.stringsearch)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.timeit)
            ];
          };
        };
      };
    }