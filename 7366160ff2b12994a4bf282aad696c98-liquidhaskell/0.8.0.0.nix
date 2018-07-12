{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
      include = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "liquidhaskell";
          version = "0.8.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2010-17 Ranjit Jhala & Niki Vazou, University of California, San Diego.";
        maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
        author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
        homepage = "https://github.com/ucsd-progsys/liquidhaskell";
        url = "";
        synopsis = "Liquid Types for Haskell";
        description = "Liquid Types for Haskell.";
        buildType = "Simple";
      };
      components = {
        "liquidhaskell" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.ghc-boot
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.array
            hsPkgs.hpc
            hsPkgs.cmdargs
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.Diff
            hsPkgs.filepath
            hsPkgs.ghc-paths
            hsPkgs.hscolour
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.liquid-fixpoint
            hsPkgs.located-base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.fingertree
            hsPkgs.Cabal
            hsPkgs.bifunctors
            hsPkgs.cereal
            hsPkgs.binary
            hsPkgs.temporary
            hsPkgs.transformers
            hsPkgs.text-format
            hsPkgs.th-lift
            hsPkgs.exceptions
            hsPkgs.QuickCheck
            hsPkgs.ghc-prim
          ];
        };
        exes = {
          "liquid" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.ghc-boot
              hsPkgs.cmdargs
              hsPkgs.time
              hsPkgs.deepseq
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.liquid-fixpoint
              hsPkgs.located-base
              hsPkgs.liquidhaskell
            ];
          };
          "target" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hint
              hsPkgs.liquidhaskell
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.optparse-applicative
              hsPkgs.stm
              hsPkgs.tagged
              hsPkgs.tasty
              hsPkgs.tasty-ant-xml
              hsPkgs.tasty-hunit
              hsPkgs.tasty-rerun
              hsPkgs.transformers
              hsPkgs.syb
              hsPkgs.liquid-fixpoint
            ];
          };
          "liquidhaskell-parser" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.tasty
              hsPkgs.tasty-ant-xml
              hsPkgs.tasty-hunit
              hsPkgs.tasty-rerun
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.syb
              hsPkgs.liquid-fixpoint
            ] ++ (if _flags.devel
              then [
                hsPkgs.aeson
                hsPkgs.binary
                hsPkgs.bytestring
                hsPkgs.cereal
                hsPkgs.cmdargs
                hsPkgs.data-default
                hsPkgs.deepseq
                hsPkgs.directory
                hsPkgs.filepath
                hsPkgs.mtl
                hsPkgs.ghc
                hsPkgs.hashable
                hsPkgs.liquid-fixpoint
                hsPkgs.pretty
                hsPkgs.syb
                hsPkgs.time
                hsPkgs.unordered-containers
              ]
              else [ hsPkgs.liquidhaskell ]);
          };
        };
      };
    }