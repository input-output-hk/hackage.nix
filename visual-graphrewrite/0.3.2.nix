{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "visual-graphrewrite";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "zsol@elte.hu";
        author = "Zsolt Dollenstein";
        homepage = "http://github.com/zsol/visual-graphrewrite/";
        url = "";
        synopsis = "Visualize the graph-rewrite steps of a Haskell program";
        description = "Visualize the graph-rewrite steps of a Haskell program. Currently it only shows the right-hand-sides of rewrite rules (function alternatives).";
        buildType = "Simple";
      };
      components = {
        visual-graphrewrite = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.value-supply
            hsPkgs.lazysmallcheck
            hsPkgs.haskell-src
            hsPkgs.ipprint
            hsPkgs.fgl
            hsPkgs.pretty
          ];
        };
        exes = {
          visual-graphrewrite = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.value-supply
              hsPkgs.lazysmallcheck
              hsPkgs.haskell-src
              hsPkgs.ipprint
              hsPkgs.strict-concurrency
              hsPkgs.parallel
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.fgl
              hsPkgs.pretty
              hsPkgs.gtk
              hsPkgs.svgcairo
              hsPkgs.cairo
            ];
          };
        };
      };
    }