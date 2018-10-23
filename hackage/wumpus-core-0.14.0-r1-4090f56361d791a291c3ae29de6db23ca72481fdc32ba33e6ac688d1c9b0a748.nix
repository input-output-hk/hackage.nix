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
        version = "0.14.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "Wumpus - (W)riter (M)onad (P)ost (S)cript.\n\nWumpus is a library for generating 2D vector pictures, its\nsalient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and quite efficient\n(no unnecessary stack operations).\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to all geometric objects. Unlike PostScript there\nis no notion of a current point, Wumpus builds pictures in a\ncoordinate-free style. There is a set of combinators for\ncomposing pictures (more-or-less similar to the usual pretty\nprinting combinators).\n\nTHE DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. I\\'ve worked on a complementary package\n@wumpus-extra@ with higher-level stuff (polygons, arrows etc.)\nbut it is too unstable for Hackage. Preview releases can be\nfound at <http://code.google.com/p/copperbox/> though.\n\nWumpus-core should be fairly stable from now on. There may be\nsome name changes etc. that will change interfaces, but Wumpus\nhas been carefully implemented. Some of the design decisions\nare not sophisticated (e.g. how attributes like colour are\nhandled, and how the bounding boxes of text labels are\ncalculated), so Wumpus might be limited compared to other\nsystems. However its design permits a simple implementation -\nwhich is a priority. Text encoding an exception, I\\'m not sure\nhow reasonable the design is. The current implementation\nappears okay for Latin 1 but I\\'m not sure about other\ncharacter sets, and I may have to revise it significantly.\n\nWith revision 0.14.0, I've added the first draft of a user\nguide. Source for the guide is included as well as the PDF as\nthere is an extra example picture. @wumpus-extra@ hasn\\'t\nreceived any more attention unfortunately, so Wumpus is still\nreally a bit too primitive for general use. However, if you\nwant FFI-free vector graphics and Wumpus seems to otherwise\nfit the task, please email me and I will try to help.\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool to\nconvert Wumpus'\\s EPS files to many other formats (bitmaps).\n\nChangelog:\n\n0.13.1 to 0.14.0:\n\n* Added draft user guide.\n\n* Argument order changed for @ellipse@ and @zellispe@ in\nWumpus.Core.Picture.\n\n* Removed dependency on Data.Aviary.\n\n* Removed DList dependency.\n";
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
          (hsPkgs.algebra)
        ];
      };
    };
  }