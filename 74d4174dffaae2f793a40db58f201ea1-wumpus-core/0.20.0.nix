{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wumpus-core";
        version = "0.20.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "\nWumpus - (W)riter (M)onad (P)ost (S)cript.\n\nWumpus is a kernel library for generating 2D vector pictures,\nits salient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@, is minimized.\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to geometric objects. Unlike PostScript there\nis no notion of a current point, Wumpus builds pictures in a\ncoordinate-free style.\n\nGENERAL DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. There is a supplemantary package @wumpus-basic@\navailable that helps create certain types of diagram, but even\nthis lacks the higher-level stuff (polygons, arrows etc.) that\nwould make creating general drawings easy.\n\nSome of the design decisions made for wumpus-core are not\nsophisticated (e.g. how attributes like colour are handled,\nand how the bounding boxes of text labels are calculated), so\nWumpus might be limited compared to other systems. However,\nthe design permits a fairly simple implementation - which is\na priority. Text encoding an exception - I\\'m not sure how\nreasonable the design is. The current implementation\nappears okay for Latin 1 but may be inadequate for other\ncharacter sets, so I may have to revise it significantly.\n\nWARNING...\n\nThe module @Core.BoundingBox@ is likely to be reworked\nsignificantly in the future. It has too many functions that do\nnot offer distinct functionality. Some functions were removed in\nrevision 0.17.0 and some more are likely to follow.\n\nThe module @Extra.PictureLanguage@ is deprecated. At some point\nit will be superceded by @wumpus-basic@ but this will not be soon.\n\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool\nto convert Wumpus'\\s EPS files to many other formats\n(bitmaps).\n\nChangelog:\n\n0.19.0 to 0.20.0:\n\n* Removed the modules - Wumpus.Extra.SafeFonts,\nWumpus.Extra.SVGColours, Wumpus.Extra.X11Colours - they are\nnow in the package @wumpus-basic@.\n\n* Removed the example FontPic.hs to @wumpus-basic@.\n\n* Renamed two functions in Core.BoundingBox - @trace@ changed\nto @traceBoundary@; @retrace@ changed to @retraceBoundary@.\n\n* Fixed bug with @picOver@, previously the zorder was wrong\nand the function was actually working as /picUnder/.\n\n* Added @capHeight@ to FontSize - get the size of an upper\ncase letter without ascenders of descenders.\n\n* Guide updated regarding the new package @wumpus-basic@.\n\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.wl-pprint)
          (hsPkgs.vector-space)
          (hsPkgs.monadLib)
          (hsPkgs.xml)
          (hsPkgs.algebra)
        ];
      };
    };
  }