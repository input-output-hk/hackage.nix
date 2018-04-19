{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-import-graph";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 ncaq";
        maintainer = "ncaq@ncaq.net";
        author = "ncaq";
        homepage = "";
        url = "";
        synopsis = "create haskell import graph for graphviz";
        description = "create haskell import graph for graphviz\nhow to:\n\n> cabal build\n> haskell-import-graph\n\nor\n\n> haskell-import-graph dist/build/foo/foo-tmp/bar.hi\n";
        buildType = "Simple";
      };
      components = {
        haskell-import-graph = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.ghc
            hsPkgs.graphviz
            hsPkgs.process
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          haskell-import-graph = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-import-graph
            ];
          };
        };
      };
    }