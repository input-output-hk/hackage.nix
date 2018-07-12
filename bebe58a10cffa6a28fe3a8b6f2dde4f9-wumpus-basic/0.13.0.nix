{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wumpus-basic";
          version = "0.13.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Common drawing utilities built on wumpus-core.";
        description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha, it was released\nto Hackage prematurely and while its capabilities have improved\nwith subsequent updates it is arguably becoming even less stable\nand more experimental (unfortunately the only thing consistent\nabout the API is that it consistently changes...).\n\nVersion 0.13.0 significantly differs form the previous release\nas font metrics support has been added and the core graphic\ntypes have been redesigned. With these re-workings some modules\nthat were previously fairly stable have changed substantially or\nare likely to change soon (@Basic.PictureLanguage@ has become\n@Basic.DrawingComposition@; @Basic.SafeFonts@ no longer seems\nvery /SVG safe/ so it is marked as pending change).\n\nNOTE - many of the demos now use font metrics. Font metrics for\nthe \\\"Core 14\\\" PostScript fonts are distributed as @*.afm@\nfiles with GhostScript in the @fonts@ directory. Wumpus expects\nthe GhostScript font metrics to be AFM version 2.0 files (this\nmatches GhostScript 8.63). Alternatively, metrics for the Core\n14 fonts are available from Adode (AFM version 4.1), see the\nlinks below. To run the demos properly you will need one of\nthese sets of metrics.\n\nAdobe Font techinal notes:\n<https://www.adobe.com/devnet/font.html>\n\nCore 14 AFM metrics:\n<https://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/Core14_AFMs.tar>\n\nWARNING - the font metrics parsing in version 0.13.0 is\nessentially a proof-of-concept and is not very robust.\nGenerally, if a font cannot be parsed, fallback metrics will be\nused. At the moment there no error logging, so there is little\nindication of whether Wumpus has used the correct metrics or the\nfallback for a requested font.\n\nChangelog:\n\n0.12.0 to 0.13.0:\n\n* Major changes to @Basic.Graphic@ modules. @DrawingR@ is\nrenamed @Drawing@ and is substantially re-worked. Graphic\n/functional/ types are now encapulated in the Drawing\nconstructor @Drawing (ctx -> pt -> prim)@ rather than\npartially outside it @pt -> Drawing (ctx -> prim)@.\n@Drawing@ monad renamed @TraceDrawing@ and @DrawingT@\ntransformer renamed @TraceDrawingT@.\n\n* Rudimentary font loading added, only AFM files are supported.\n\n* @Basic.Shapes.Coordinate@ re-worked. The Coordinate type is\nnow more like the Shapes types (excepting the intentional\ndifference in drawing style).\n\n* @Basic.Shapes.Plaintext@ removed.\n\n* @Basic.Text.LRText@ completely redesigned.\n\n";
        buildType = "Simple";
      };
      components = {
        "wumpus-basic" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.vector-space
            hsPkgs.wumpus-core
          ];
        };
      };
    }