{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SourceGraph";
          version = "0.5.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Use graph-theory to analyse your code";
        description = "SourceGraph uses the Graphalyze library to analyse\nCabalized Haskell code.";
        buildType = "Simple";
      };
      components = {
        exes = {
          SourceGraph = {
            depends  = [
              hsPkgs.base
              hsPkgs.extensible-exceptions
              hsPkgs.containers
              hsPkgs.multiset
              hsPkgs.filepath
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.fgl
              hsPkgs.Graphalyze
              hsPkgs.graphviz
              hsPkgs.Cabal
              hsPkgs.haskell-src-exts
            ];
          };
        };
      };
    }