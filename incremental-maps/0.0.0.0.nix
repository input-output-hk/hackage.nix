{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "incremental-maps";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jelken@itcollege.ee";
        author = "Jaan Elken (supervisor Denis Firsov)";
        homepage = "";
        url = "";
        synopsis = "Package for doing incremental computations on maps";
        description = "This package is about incremental computing.";
        buildType = "Simple";
      };
      components = {
        incremental-maps = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.dlist
            hsPkgs.fingertree
            hsPkgs.order-maintenance
            hsPkgs.transformers
          ];
        };
        tests = {
          map-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.cabal-test-quickcheck
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.incremental-maps
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.QuickCheck
              hsPkgs.criterion
              hsPkgs.containers
              hsPkgs.deepseq-generics
              hsPkgs.deepseq
              hsPkgs.dlist
              hsPkgs.incremental-maps
            ];
          };
        };
      };
    }