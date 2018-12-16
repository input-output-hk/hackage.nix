{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wumpus-tree";
        version = "0.17.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Drawing trees";
      description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape, leaf nodes evenly spaced.\n\nNote - the demos now use font metrics. Font metrics for the\n\\\"Core 14\\\" PostScript fonts are distributed as @*.afm@ files\nwith GhostScript (AFM file version 2.0 for GhostScript 8.63) or\navailable from Adode (AFM file version 4.1). To run the demos\nproperly you will need one of these sets of metrics.\n\nAdobe Font technical notes:\n<https://www.adobe.com/devnet/font.html>\n\nCore 14 AFM metrics:\n<https://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/Core14_AFMs.tar>\n\n\n\\*\\* WARNING \\*\\* - the API is unstable and will change.\n\nChangelog:\n\nv0.16.0 to v0.17.0:\n\n* Reworked internals to use the @LocDrawing@ monad from\nWumpus-Basic.\n\nv0.15.0 to v0.16.0:\n\n* Re-worked so tree drawings form a @LocGraphic@ rather than a\n@TraceDrawing@, this makes more in line with other graphic\nobjects in Wumpus like shapes.\n\n* Changed node type to be any @LocImage@ where the answer\nsupports anchors.\n\n\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
          (hsPkgs.wumpus-basic)
          (hsPkgs.wumpus-drawing)
        ];
      };
    };
  }