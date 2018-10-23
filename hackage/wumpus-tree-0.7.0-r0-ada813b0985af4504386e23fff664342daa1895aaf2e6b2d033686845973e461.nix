{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wumpus-tree";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Drawing trees";
      description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape, leaf nodes evenly spaced.\n\n\nChangelog:\n\n0.6.0 to 0.7.0:\n\n* More example trees in Demo01.hs.\n\n* Updated to track changes in Wumpus-Basic.\n\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-tree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
          (hsPkgs.wumpus-basic)
        ];
      };
    };
  }