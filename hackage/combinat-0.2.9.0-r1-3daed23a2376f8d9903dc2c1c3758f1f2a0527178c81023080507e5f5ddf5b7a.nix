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
      specVersion = "1.24";
      identifier = {
        name = "combinat";
        version = "0.2.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2018 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://moire.be/haskell/";
      url = "";
      synopsis = "Generate and manipulate various combinatorial objects.";
      description = "A collection of functions to generate, count, manipulate\nand visualize all kinds of combinatorial objects like\npartitions, compositions, trees, permutations, braids,\nYoung tableaux, and so on.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "combinat-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.combinat)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }