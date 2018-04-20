{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "equivalence";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paba@di.ku.dk";
        author = "Patrick Bahr";
        homepage = "https://bitbucket.org/paba/equivalence/";
        url = "";
        synopsis = "Maintaining an equivalence relation implemented as union-find using STT.";
        description = "This is an implementation of Tarjan's Union-Find algorithm (Robert\nE. Tarjan. \"Efficiency of a Good But Not Linear Set Union\nAlgorithm\", JACM 22(2), 1975) in order to maintain an equivalence\nrelation.\nThis implementation is a port of the /union-find/ package using the\nST monad transformer (instead of the IO monad).";
        buildType = "Simple";
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
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.STMonadTrans
            ];
          };
        };
      };
    }