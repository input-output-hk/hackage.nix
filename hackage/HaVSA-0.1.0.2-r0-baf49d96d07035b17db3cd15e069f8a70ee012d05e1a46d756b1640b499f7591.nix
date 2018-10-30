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
      specVersion = "1.8.0.6";
      identifier = {
        name = "HaVSA";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Version Space Algebra learning framework.";
      description = "HaVSA (Have-Saa) is a Haskell implementation of the Version Space\nAlgebra Machine Learning technique described by Tessa Lau.  The\ncanonical description is in:\n\nTessa Lau, Steven Wolfman, Pedro Domingos, and Daniel S. Weld,\nProgramming by Demonstration using Version Space Algebra,\nMachine Learning, 2003. (http://tlau.org/research/papers/mlj01-draft.pdf)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.logict)
        ];
      };
      exes = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logict)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }