{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-core"; version = "0.17.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "\nWumpus - (W)riter (M)onad (P)ost (S)cript.\n\nWumpus is a library for generating 2D vector pictures, its\nsalient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and quite efficient\n(no unnecessary stack operations).\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to geometric objects. Unlike PostScript there\nis no notion of a current point, Wumpus builds pictures in a\ncoordinate-free style. There is a set of combinators for\ncomposing pictures (more-or-less similar to the usual pretty\nprinting combinators).\n\nWith revision 0.15.0 I\\'ve added three extra helper modules\nthat are not really part of the \\\"core\\\", but they provide\nlists of named colours and fonts.\n\nWARNING...\n\nwumpus-core is likely to change quite a bit with the next\nrevision as I want to see if I can make Primitives\nsupport affine translations. Hopefully this will not change\nthe API significantly though it will mean the generated\nSVG and PostScript files will be different (possibly\nclearer). Also the Core.BoundingBox module is not too well\ndesigned, too many functions that do not offer distinct\nfunctionality. Some functionality was removed in this revision\n(0.17.0) and more is likely to follow.\n\nGENERAL DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. I\\'ve worked on a complementary package\n@wumpus-extra@ with higher-level stuff (polygons, arrows etc.)\nbut it is too unstable for Hackage. Preview releases can be\nfound at <http://code.google.com/p/copperbox/> though.\n\nSome of the design decisions made for wumpus-core are not\nsophisticated (e.g. how attributes like colour are\nhandled, and how the bounding boxes of text labels are\ncalculated), so Wumpus might be limited compared to other\nsystems. However its design permits a simple implementation -\nwhich is a priority. Text encoding an exception - I\\'m not\nsure how reasonable the design is. The current implementation\nappears okay for Latin 1 but I\\'m not sure about other\ncharacter sets, and I may have to revise it significantly.\n\nWith revision 0.14.0, I've added the first draft of a user\nguide. Source for the guide is included as well as the PDF as\nthere is an extra example picture.  @wumpus-extra@ hasn\\'t\nreceived any more attention unfortunately, so Wumpus is still\nreally a bit too primitive for general use. However, if you\nwant FFI-free vector graphics and Wumpus seems to otherwise\nfit the task, please email me and I will try to help.\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool to\nconvert Wumpus'\\s EPS files to many other formats (bitmaps).\n\nChangelog:\n\n0.16.0 to 0.17.0:\n\n* Added Core.WumpusTypes to export opaque versions of\ndatatypes from Core.PictureInternal. This should make\nthe Haddock documentation more cohesive.\n\n* Moved the Core.PictureLanguage module into the Extra\nnamespace (Extra.PictureLanguage). This module change\nin detail, if not in spirit in the future as I'm not\nto happy with it. Also this model is somewhat\n\\\"higher-level\\\" than the modules in wumpus-core, so\na different home seems fitting.\n\n* Removed CardinalPoint and boundaryPoint from BoundingBox.\n\n* Argument order of 'textlabel' and 'ztextlabel' changed so\nthat Point2 is the last argument.\n\n* PathSegment constructor names changed - this is an internal\nchange as the constructors are not exported.\n\n* Primitive type changed - moved Ellipse properties into\nPrimEllipse type - internal change.\n\n* Removed dependency on \\'old-time\\'.\n\n0.15.0 to 0.16.0:\n\n* Additions to Core.Geometry (direction, pvec, vangle,\ncircularModulo).\n\n* Fixed error with langle due to not accounting for circle\nquadrants in Core.Geometry.\n\n* Point2 now derives Ord - so it can be used as a key for\nData.Map.\n\n* Added escape-character handling to text output in PostScript.\nThis was causing a nasty bug where a drawing would completely\nfail when special chars shown (GhostView gives little hint of\nwhat is wrong when such errors are present).\n\n* Changed BoundingBox operation 'corners' to return a 4-tuple\nrather than a list.\n\n* Added centeredAt to PictureLanguage\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
          ];
        buildable = true;
        };
      };
    }