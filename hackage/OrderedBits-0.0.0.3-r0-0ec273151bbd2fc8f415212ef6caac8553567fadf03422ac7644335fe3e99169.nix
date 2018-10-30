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
        name = "OrderedBits";
        version = "0.0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2014 - 2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "https://github.com/choener/OrderedBits";
      url = "";
      synopsis = "Efficient ordered (by popcount) enumeration of bits";
      description = "This library provides efficient methods to enumerate all\nelements of a set in order of the population count, or the\nordered enumerations of the elements of the powerset of a set.\nFirst, the empty set, then all 1-element sets, all 2-element\nsets, etc.  Such enumerations are important for algorithms over\nunordered data sets. Examples include the travelling salesman\nproblem and the closely related Hamiltonian path problem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bits)
          (hsPkgs.primitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OrderedBits)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
      benchmarks = {
        "BenchmarkOrderedBits" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.OrderedBits)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }