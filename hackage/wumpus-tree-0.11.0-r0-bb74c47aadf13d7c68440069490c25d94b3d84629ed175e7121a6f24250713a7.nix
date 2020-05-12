{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-tree"; version = "0.11.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Drawing trees";
      description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape, leaf nodes evenly spaced.\n\nNote - the demos now use font metrics. Font metrics for the\n\\\"Core 14\\\" PostScript fonts are distributed as @*.afm@ files\nwith GhostScript (AFM file version 2.0 for GhostScript 8.63) or\navailable from Adode (AFM file version 4.1). To run the demos\nproperly you will need one of these sets of metrics.\n\nAdobe Font techinal notes:\n<https://www.adobe.com/devnet/font.html>\n\nCore 14 AFM metrics:\n<https://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/Core14_AFMs.tar>\n\n\n\\*\\* WARNING \\*\\* - the API is unstable and will change.\n\nChangelog:\n\n0.10.0 to 0.11.0:\n\n* Changed types of drawing functions so they can be run with\nglyph metrics (read from file in the IO monad).\n\n* Generalized the unit type of the /design/ functions to some\nnumeric @u@ rather than Double.\n\n* The demo has been duplicated - one version uses GhostScript\nglyph metrics and the other Adobe glyph metrics, as the\nmetrics are in different formats and need different font\nloaders from Wumpus-Basic.\n\n0.9.0 to 0.10.0:\n\n* Internal changes to track updates to Wumpus-Basic.\n\n0.8.0 to 0.9.0:\n\n* Stopped re-exporting @DrawingContext@ from Wumpus-Basic in\nthe module Wumpus.Tree. Clients must now import\n@Wumpus.Basic.Graphic@ to get the @DrawingContext@ type and\nthe constructor @StandardContext@.\n\n* Internal changes to track updates to Wumpus-Basic.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."wumpus-core" or (errorHandler.buildDepError "wumpus-core"))
          (hsPkgs."wumpus-basic" or (errorHandler.buildDepError "wumpus-basic"))
          ];
        buildable = true;
        };
      };
    }