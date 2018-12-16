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
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2016";
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
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.kan-extensions)
          (hsPkgs.parallel)
          (hsPkgs.pipes)
          (hsPkgs.QuickCheck)
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
            (hsPkgs.kan-extensions)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-parse)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
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
            (hsPkgs.vector)
            (hsPkgs.DPutils)
          ];
        };
      };
    };
  }