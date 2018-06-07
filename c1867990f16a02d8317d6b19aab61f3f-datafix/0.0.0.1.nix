{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      no-lattices = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "datafix";
          version = "0.0.0.1";
        };
        license = "ISC";
        copyright = "© 2017 Sebastian Graf";
        maintainer = "sgraf1337@gmail.com";
        author = "Sebastian Graf";
        homepage = "https://github.com/sgraf812/datafix";
        url = "";
        synopsis = "Fixing data-flow problems";
        description = "Fixing data-flow problems in expression trees";
        buildType = "Custom";
      };
      components = {
        datafix = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.pomaps
          ] ++ pkgs.lib.optional (!_flags.no-lattices) hsPkgs.lattices;
        };
        tests = {
          tests = {
            depends  = ([
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.cabal-toolkit
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-smallcheck
              hsPkgs.containers
              hsPkgs.primitive
              hsPkgs.transformers
              hsPkgs.datafix
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.turtle
              hsPkgs.text
            ] ++ pkgs.lib.optional (!_flags.no-lattices) hsPkgs.lattices) ++ pkgs.lib.optional _flags.no-lattices hsPkgs.pomaps;
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
              hsPkgs.QuickCheck
              hsPkgs.datafix
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = ([
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.cabal-toolkit
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.primitive
              hsPkgs.transformers
              hsPkgs.datafix
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.turtle
              hsPkgs.text
            ] ++ pkgs.lib.optional (!_flags.no-lattices) hsPkgs.lattices) ++ pkgs.lib.optional _flags.no-lattices hsPkgs.pomaps;
          };
        };
      };
    }