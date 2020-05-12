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
      identifier = { name = "wumpus-core"; version = "0.19.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation. ";
      description = "\nWumpus - (W)riter (M)onad (P)ost (S)cript.\n\nWumpus is a library for generating 2D vector pictures, its\nsalient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@, is minimized.\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to geometric objects. Unlike PostScript there\nis no notion of a current point, Wumpus builds pictures in a\ncoordinate-free style.\n\nWumpus-core includes some extra helper modules that are not\nreally part of the \\\"core\\\", but are otherwise currently\nhomeless. They provide lists of named colours and /safe/\nfonts, plus some prototype code (Extra.PictureLanguage) for\narranging pictures.\n\nWARNING...\n\nThe modules @Core.BoundingBox@ and @Extra.PictureLanguage@ are\nlikely to be reworked significantly in the future.\n\n@Core.BoundingBox@ has too many functions that do not offer\ndistinct functionality. Some functions were removed in\nrevision 0.17.0 and some more are likely to follow.\n\n@Extra.PictureLanguage@ needs some more thought. The current\nset of classes is rather cumbersome, and some of the operations\nwould benefit new names.\n\nNOTE...\n\nRevision 0.17.0 added affine transformations for primitives\n(paths, text labels, ellipses), one consequence of this is\nthe bounding box may be tighter for a primitive under affine\ntransformation then lifted to a picture, than a primitive\nlifted to picture then transformed, i.e.:\n\n@boundary (liftToPicture (transform PRIM)) /= boundary (transform (liftToPicture PRIM))@\n\nWhere liftToPicture is usually @frame@ from\n@Wumpus.Core.Picture@.\n\nThis is because the bounding box of a transformed picture is\ncalculated by applying the transformation to the corner points\nof its (previous) bounding box rather than finding the bounding\nbox union of all the composite primitives.\n\nGENERAL DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. I\\'m working on a complementary package\n@wumpus-extra@ with higher-level stuff (polygons, arrows etc.)\nbut it is too unstable for Hackage. Preview releases can be\nfound at <http://code.google.com/p/copperbox/> though.\n\nSome of the design decisions made for wumpus-core are not\nsophisticated (e.g. how attributes like colour are handled,\nand how the bounding boxes of text labels are calculated), so\nWumpus might be limited compared to other systems. However,\nthe design permits a fairly simple implementation - which is\na priority. Text encoding an exception - I\\'m not sure how\nreasonable the design is. The current implementation\nappears okay for Latin 1 but may be inadequate for other\ncharacter sets, so I may have to revise it significantly.\n\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool\nto convert Wumpus'\\s EPS files to many other formats\n(bitmaps).\n\nChangelog:\n\n0.18,0 to 0.19.0:\n\n* Added @Transform@ type class to apply a matrix transformation\ndirectly.\n\n* Changed the ordering of picture drawing in PostScript and SVG\noutput so the list gets drawn from tail to head with right\nfolds. This makes the list order of pictures match their\nzorder.\n\n* Renamed the function @withinBB@ (Core.BoundingBox) to\n@within@.\n\n* On many type signatures with e.g. Points, I\\'ve changed the\nparameter name on the type constructor from @a@ to @u@.\nThis is to indicate that @u@ is some unit - almost always a\nDouble. e.g @Point2 a@ becomes @Point2 u@ and all the class\nobligations change lexically as well @Floating a =>@ to\n@Floating u =>@. Superficially this means a lot of type\nsignatures have diffs but haven\\'t really changed.\n\n* Added function @bezierCircle@ to generate the Bezier curve\npoints for arcs describing a circle.\n\n* Added new demo - MultiPic. The PostScript it generates\nis efficient - no extraneous use of @concat@.\n\n* Added wumpus_default_font constant.\n\n0.17.0 to 0.18.0:\n\n* Added instances of the affine operation classes (Scale,\nRotate ...) for Primitives (path, text label, ellipse).\n\n* Added some picture composition functions to Core.Picture.\nThese are useful for testing where the type class\ncomplications of Extra.PictureLanguage are an overhead.\n\n* Added iRGB to Core.Colour - create RGB colours with\ninteger components [0..255] - and iHSB, iGrey.\n\n* Added some test modules for the affine transformations.\nThese illustrate a quirk in Wumpus where, under affine\ntransformation, Pictures may generate a larger bounding box\nthan composite primitives.\n\n* Minor change - ztextlabel changed to use 24pt type rather\nthan 12pt.\n\n* Corrected the cabal file to include the correct files for\nthe manual. The Haskell source file @WorldFrame.hs@ was\nmissing with the generated file @WorldFrame.eps@ incorrectly\nincluded instead.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
          ];
        buildable = true;
        };
      };
    }