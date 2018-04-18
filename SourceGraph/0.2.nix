{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "SourceGraph";
          version = "0.2";
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
              hsPkgs.fgl
              hsPkgs.Graphalyze
              hsPkgs.graphviz
              hsPkgs.Cabal
              hsPkgs.Cabal
              hsPkgs.haskell-src-exts
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.containers
                hsPkgs.filepath
                hsPkgs.random
                hsPkgs.directory
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }