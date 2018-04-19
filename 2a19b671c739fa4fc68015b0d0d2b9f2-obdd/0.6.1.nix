{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "obdd";
          version = "0.6.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Johannes Waldmann";
        homepage = "https://github.com/jwaldmann/haskell-obdd";
        url = "";
        synopsis = "Ordered Reduced Binary Decision Diagrams";
        description = "Construct, combine and query OBDDs;\nan efficient representation for formulas in propositional logic.\n\nThis is mostly educational.\nThe BDDs do not share nodes (there is no persistent BDD base) and this might introduce inefficiencies.\n\nAn important (for me, in teaching) feature is\nthat I can immediately draw the BDD to an X11 window (via graphviz).\nFor example, to show the effect of different variable orderings,\ntry this in ghci:\n\n> import qualified Prelude as P\n> import OBDD\n> let f [] = false; f (x:y:zs) = x && y || f zs\n> display P.\$ f P.\$ P.map variable [1,2,3,4,5,6]\n> display P.\$ f P.\$ P.map variable [1,4,2,5,3,6]\n\nIf you want better performance,\nuse <http://vlsi.colorado.edu/%7Efabio/CUDD/ CUDD>\n<https://hackage.haskell.org/package/cudd Haskell bindings>,\nsee <https://gitlab.imn.htwk-leipzig.de/waldmann/min-comp-sort this example>.";
        buildType = "Simple";
      };
      components = {
        obdd = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.process
          ];
        };
        tests = {
          obdd-placement = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
          obdd-queens = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
          obdd-queens2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
          obdd-weight = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
          obdd-sort = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
            ];
          };
          obdd-mm0916 = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.obdd
              hsPkgs.array
            ];
          };
        };
      };
    }