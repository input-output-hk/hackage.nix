{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-core"; version = "0.13.1"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "Wumpus - (W)riter (M)onad (P)ost (S)cript.\n\nWumpus is a library for generating 2D vector pictures, its\nsalient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and quite efficient\n(no unnecessary stack operations).\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to all geometric objects. Unlike PostScript there\nis no notion of a current point, Wumpus builds pictures in a\ncoordinate-free style. There is a set of combinators for\ncomposing pictures (more-or-less similar to the usual pretty\nprinting combinators).\n\nTHE DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. I am working on a complementary package\n@wumpus-extra@ with higher-level stuff (polygons, arrows etc.)\nbut it is too unstable for Hackage. Preview releases can be\nfound at <http://code.google.com/p/copperbox/> though.\n\nWumpus-core should be fairly stable from now on. There may be\nsome name changes etc. that will change interfaces, but Wumpus\nhas been carefully implemented. Some of the design decisions\nare not sophisticated (e.g. how attributes like colour are\nhandled, and how the bounding boxes of text labels are\ncalculated), so Wumpus might be limited compared to other\nsystems. However its design permits a simple implementation -\nwhich is a priority. Text encoding an exception, I\\'m not sure\nhow reasonable the design is. The current implementation\nappears okay for Latin 1 but I\\'m not sure about other\ncharacter sets, and I may have to revise it significantly.\n\n/There is no documentation/ - the graphics model used by\nWumpus is different to PostScript or SVG, and Wumpus really\nneeds a manual. Unfortunately there isn\\'t one yet, and I will\nbe focusing on @wumpus-extra@ for the foreseeable future; so a\nmanual won\\'t be written soon. If you want FFI-free vector\ngraphics and Wumpus seems to otherwise fit the task, please\nemail me and I will try to help.\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool to\nconvert Wumpus'\\s EPS files to many other formats (bitmaps).\n\nChangelog:\n\n0.13.0 to 0.13.1:\n\n* Wumpus.Core.SVG changed path_s to path_c - \\'S\\' was the\nwrongSVG command to match PostScript\\'s @curveto@.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
          (hsPkgs."data-aviary" or ((hsPkgs.pkgs-errors).buildDepError "data-aviary"))
          ];
        buildable = true;
        };
      };
    }