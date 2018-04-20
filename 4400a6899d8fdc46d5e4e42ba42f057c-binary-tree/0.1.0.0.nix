{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-tree";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2018 Donnacha Oisín Kidney";
        maintainer = "mail@doisinkidney.com";
        author = "Donnacha Oisín Kidney";
        homepage = "https://github.com/oisdk/binary-tree#readme";
        url = "";
        synopsis = "";
        description = "Please see the README on Github at <https://github.com/oisdk/binary-tree#readme>";
        buildType = "Simple";
      };
      components = {
        binary-tree = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          binary-tree-test = {
            depends  = [
              hsPkgs.ChasingBottoms
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.binary-tree
              hsPkgs.checkers
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.binary-tree
              hsPkgs.doctest
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary-tree
              hsPkgs.criterion
              hsPkgs.random
            ];
          };
        };
      };
    }