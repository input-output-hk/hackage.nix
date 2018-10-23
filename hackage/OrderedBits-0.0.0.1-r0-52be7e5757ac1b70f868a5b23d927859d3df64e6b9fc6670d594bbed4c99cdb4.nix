{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "OrderedBits";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2014 - 2015";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.bioinf.uni-leipzig.de/~choener/";
      url = "";
      synopsis = "Efficient ordered (by popcount) enumeration of bits";
      description = "This library provides efficient methods to enumerate all\nelements of a set in order of the population count. First, the\nempty set, then all 1-element sets, all 2-element sets, etc.\nSuch enumerations are important for algorithms over unordered\ndata sets. Examples include the travelling salesman problem and\nthe closely related Hamiltonian path problem.";
      buildType = "Simple";
    };
    components = {
      "OrderedBits" = {
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