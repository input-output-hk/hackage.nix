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
        version = "0.15.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Drawing trees";
      description = "\nTree drawing with /nice/ layout.\n\nDraw trees represented by Data.Tree, output SVG or EPS. The\noutput should be quite good - no overlapping edges, identical\nsubtrees should have the same shape, leaf nodes evenly spaced.\n\nNote - the demos now use font metrics. Font metrics for the\n\\\"Core 14\\\" PostScript fonts are distributed as @*.afm@ files\nwith GhostScript (AFM file version 2.0 for GhostScript 8.63) or\navailable from Adode (AFM file version 4.1). To run the demos\nproperly you will need one of these sets of metrics.\n\nAdobe Font technical notes:\n<https://www.adobe.com/devnet/font.html>\n\nCore 14 AFM metrics:\n<https://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/Core14_AFMs.tar>\n\n\n\\*\\* WARNING \\*\\* - the API is unstable and will change.\n\nChangelog:\n\nv0.14.0 to v0.15.0\n\n* Updated to work with latest Wumpus libraries.\n@ScalingContext@ has been temporarily added from Wumpus-Basic\n(it was considered obsolete there). At some point the\nfunctionality needs re-implementing so it can be removed from\nTree.\n\nv0.13.0 to v0.14.0:\n\n* Updated to work with latest Wumpus libraries.\n\nv0.12.0 to v0.13.0:\n\n* Changed the specification of trees so that they are built in a\nmonad. The bind operation of the monad allows /anchors/ to be\nextracted from tree nodes so they can be annotated with\nsupplementary graphics. At the moment this is rather limited\nas Wumpus-Basic and Wumpus-Drawing do not offer much support\nfor anchors other than the basic type classes.\n\n* Changed the type of the rendering functions so they produce a\nTreeDrawing. This type is more suitable for building composite\npictures than the previous type TreePicture.\n\n* Also the rendering functions now take a start point for the\nroot node, again this should be more convenient for drawing\ncomposite pictures - see the demo which now draws all the\nexample trees on one page.\n\n* Internally the tree design is now more flexible - trees can be\ndesigned upwards or leftwards rightwards, rather than just\ndownwards; and edge drawing style is lifted out of the\nrendering to use a supplied combinator. Currently these\nfeatures are not exposed by the API, the API needs more\nthought (possibly warranting changes to Wumpus-Basic and\nWumpus-Drawing).\n\n\nv0.11.1 to v0.12.0:\n\n* Internal changes to track updates to Wumpus-Basic.\n\n";
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
          (hsPkgs.wumpus-drawing)
        ];
      };
    };
  }