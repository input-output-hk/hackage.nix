{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "equivalence";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Patrick Bahr <paba@diku.dk>";
        author = "Patrick Bahr <paba@diku.dk>";
        homepage = "";
        url = "";
        synopsis = "Maintaining an equivalence relation implemented as union-find using STT.";
        description = "This is an implementation of Tarjan's Union-Find algorithm (Robert\nE. Tarjan. \"Efficiency of a Good But Not Linear Set Union\nAlgorithm\", JACM 22(2), 1975) in order to maintain an equivalence\nrelation.\nThis implementation is a port of the /union-find/ package using the\nST monad transformer (instead of the IO monad).";
        buildType = "Custom";
      };
      components = {
        equivalence = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.STMonadTrans
          ];
        };
        exes = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }