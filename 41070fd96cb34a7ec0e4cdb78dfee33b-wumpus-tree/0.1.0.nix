{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wumpus-tree";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Drawing trees";
        description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape.\n\n";
        buildType = "Simple";
      };
      components = {
        wumpus-tree = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector-space
            hsPkgs.wumpus-core
            hsPkgs.wumpus-basic
          ];
        };
      };
    }