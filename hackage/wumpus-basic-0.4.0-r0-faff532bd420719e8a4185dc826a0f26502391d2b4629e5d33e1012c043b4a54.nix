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
        name = "wumpus-basic";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Common drawing utilities built on wumpus-core.";
      description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha. It is only on\nHackage to support other packages (Wumpus-Tree,\nWumpus-Microprint) that are slighly more stable.\n\nA few of the modules (SafeFonts, SVGColours, X11Colours) are\nfairly stable others simply aren\\'t and may even disappear in\nsubsequent updates.\n\n\nChangelog:\n\n0.3.0 to 0.4.0:\n\n* Reworked the monads. Monads.DrawingMonad replaces\nMonads.Trace, Monads.DrawingCtx, Monads.ConsDrawing. The\nSnocDrawing monads have been removed as they were a design\nmistake.\n\n* Removed MGraphicF type, added AGraphic.\n\n* Initial work on arrow drawing and extended text drawing.\n\n0.2.0 to 0.3.0 :\n\n* Added the anchors, monads, drawingAttrs...\n\n* Added the module @PictureLanguage@ from Wumpus-Core.\nIt is located with the path prefix @Wumpus.Deprecated@.\nAt some point it will be replaced...\n\n* Basic.Graphic - rectangles and lines now take the supplied\npoint to be the center rather than the bottom-left corner.\nName changes - @circle@ changed to @disk@, @text@ changed to\n@textline@.\n\n0.1.1 to 0.2.0:\n\n* Added the module @Wumpus.Basic.Graphic@.\n\n* SafeFonts changed to be size neutral. PostScript\\'s\n@scalefont@ command (which wumpus-core uses in the generated\noutput) should be able to scale to any integer size.\n\n* New demo @ColourCharts.hs@.\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-basic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector-space)
          (hsPkgs.monadLib)
          (hsPkgs.wumpus-core)
        ];
      };
    };
  }