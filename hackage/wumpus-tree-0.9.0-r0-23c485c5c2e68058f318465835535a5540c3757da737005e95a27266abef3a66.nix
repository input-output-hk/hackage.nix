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
        version = "0.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Drawing trees";
      description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape, leaf nodes evenly spaced.\n\n\\*\\* WARNING \\*\\* - the API is unstable and will change.\n\nChangelog:\n\n0.8.0 to 0.9.0:\n\n* Stopped re-exporting @DrawingContext@ from Wumpus-Basic in\nthe module Wumpus.Tree. Clients must now import\n@Wumpus.Basic.Graphic@ to get the @DrawingContext@ type and\nthe constructor @StandardContext@.\n\n* Internal changes to track updates to Wumpus-Basic.\n\n";
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