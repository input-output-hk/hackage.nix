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
        name = "wumpus-core";
        version = "0.13.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "Wumpus - (W)riter (M)onad (P)ost (S)cript.\n\nWumpus is a library for generating 2D vector pictures, its\nsalient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and quite efficient\n(no unnecessary stack operations).\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to all geometric objects. Unlike PostScript there\nis no notion of a current point, Wumpus builds pictures in a\ncoordinate-free style. There is a set of combinators for\ncomposing pictures (more-or-less similar to the usual pretty\nprinting combinators).\n\nTHE DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. I am working on a complementary package\n@wumpus-extra@ with higher-level stuff (polygons, arrows etc.)\nbut it is too unstable for Hackage. Preview releases can be\nfound at <http://code.google.com/p/copperbox/> though.\n\nWumpus-core should be fairly stable from now on. There may be\nsome name changes etc. that will change interfaces, but Wumpus\nhas been carefully implemented. Some of the design decisions\nare not sophisticated (e.g. how attributes like colour are\nhandled, and the bounding boxes of text labels are calculated),\nso Wumpus might be limited compared to other systems. However\nits design permits a simple implementation - which is a\npriority. Text encoding an exception, I\\'m not sure how\nreasonable the design is. The current implementation appears\nokay for Latin 1 but I\\'m not sure about other character sets,\nand I may have to revise it significantly.\n\n/There is no documentation/ - the graphics model used by\nWumpus is different to PostScript or SVG, and Wumpus really\nneeds a manual. Unfortunately there isn\\'t one yet, and I will\nbe focusing on @wumpus-extra@ for the foreseeable future; so a\nmanual won\\'t be written soon. If you want FFI-free vector\ngraphics and Wumpus seems to otherwise fit the task, please\nemail me and I will try to help.\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool to\nconvert Wumpus'\\s EPS files to many other formats (bitmaps).\n\nChangelog:\n\n0.12.0 to 0.13.0:\n\n* More Haddock documenting.\n\n* @lowerLeftUpperRight@ removed from \"Wumpus.Core.BoundingBox\".\n\n* Added range checking and Ord obligation to the @bbox@\n\\'smart\\' constructor.\n\n* Numeric instances for \"Wumpus.Core.Colour\" improved.\n\n* MatrixMult type class simplified\n\n* Dash Pattern made a list of on-off pairs rather than just a\nlist\n\n* The modules - Wumpus.Core.PictureInternal, Wumpus.Core.PostScript,\nWumpus.Core.SVG & Wumpus.Core.Utils - are no longer exposed.\n\n* Various operators in \"Wumpus.Core.PictureLanguage\" changed.\n\n* Wumpus.Core.TextEncoding split into an internal and a public\nmodule (internal - Wumpus.Core.TextEncodingInternal, public -\nWumpus.Core.TextEncoder).\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.wl-pprint)
          (hsPkgs.vector-space)
          (hsPkgs.monadLib)
          (hsPkgs.xml)
          (hsPkgs.dlist)
          (hsPkgs.algebra)
          (hsPkgs.data-aviary)
        ];
      };
    };
  }