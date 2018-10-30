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
      specVersion = "1.6";
      identifier = {
        name = "gencheck";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carette@mcmaster.ca, uszkaygj@mcmaster.ca";
      author = "Gordon J. Uszkay, Jacques Carette";
      homepage = "http://github.com/JacquesCarette/GenCheck";
      url = "http://gitbug.com/JacquesCarette/GenCheck";
      synopsis = "A testing framework inspired by QuickCheck and SmallCheck";
      description = "This framework provides functionality for testing Haskell functions\nagainst properties, similar to QuickCheck, but allowing\ndifferent test data generation strategies for different structures,\nand even within the same structure using composition strategies.\nReporting, test case scheduling and data generation modules can be\nassembled to customize the test program based on the situation.\n\nTest data generation is based on combinatorial theory\nand uses explicit enumeration of regular polynomial types,\ncombined with selection strategies to build data generators.\nGenerators can be composed or combined in parallel to create\ncomposite strategies for data sampling.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.combinat)
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.memoize)
          (hsPkgs.template-haskell)
          (hsPkgs.ieee754)
        ];
      };
    };
  }