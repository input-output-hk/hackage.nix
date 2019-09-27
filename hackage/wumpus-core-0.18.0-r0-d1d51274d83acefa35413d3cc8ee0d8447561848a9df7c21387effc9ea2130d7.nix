let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-core"; version = "0.18.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "\nWumpus - (W)riter (M)onad (P)ost (S)cript.\n\nWumpus is a library for generating 2D vector pictures, its\nsalient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@ is minimized.\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to geometric objects. Unlike PostScript there\nis no notion of a current point, Wumpus builds pictures in a\ncoordinate-free style.\n\nWith recent revisions, I\\'ve added some extra helper modules\nthat are not really part of the \\\"core\\\", but they provide\nlists of named colours and /safe/ fonts, plus some code\n(Extra.PictureLanguage) that has been moved out of the\nwumpus-core namespace because it is somewhat \\\"higher-level\\\".\n\nWARNING...\n\nWith revision 0.18.0, I\\'ve changed the internals a bit so that\nPrimitives (paths, text labels) support affine transformations.\nIn the end, this didn\\'t changed the API significantly, though\nwith the next revision, I want to look at changing the\nPostScript output - swapping some uses of @concat@ to @moveto@;\nso again there is the possibility of significant changes\nbetween this revision and the next one.\n\nAlso the module, Core.BoundingBox, is still a candidate for\nreworking, as it has too many functions that do not offer\ndistinct functionality. Some functions were removed in\nrevision 0.17.0 and some more are likely to follow.\n\nNOTE...\n\nOne consequence of adding affine transformations for primitives\nis that the bounding box of a primitive under transformation\nmay be tighter than than the bounding box of transformed\npicture containing the same primitive, i.e.:\n\n@liftToPicture (transform PRIM) /= transform (liftToPicture PRIM)@\n\nWhere liftToPicture is usually @frame@ from\n@Wumpus.Core.Picture@.\n\nThis is because the bounding box of a transformed picture is\ncalculated by applying the transformation to the corner points\nof its (previous) bounding box rather than finding the bounding\nbox union of all the composite primitives.\n\nGENERAL DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. I\\'m working on a complementary package\n@wumpus-extra@ with higher-level stuff (polygons, arrows etc.)\nbut it is too unstable for Hackage. Preview releases can be\nfound at <http://code.google.com/p/copperbox/> though.\n\nSome of the design decisions made for wumpus-core are not\nsophisticated (e.g. how attributes like colour are\nhandled, and how the bounding boxes of text labels are\ncalculated), so Wumpus might be limited compared to other\nsystems. However, the design permits a simple implementation -\nwhich is a priority. Text encoding an exception - I\\'m not\nsure how reasonable the design is. The current implementation\nappears okay for Latin 1 but may be inadequate for other\ncharacter sets, so I may have to revise it significantly.\n\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool to\nconvert Wumpus'\\s EPS files to many other formats (bitmaps).\n\nChangelog:\n\n0.17.0 to 0.18.0:\n\n* Added instances of the affine operation classes (Scale,\nRotate ...) for Primitives (path, text label, ellipse).\n\n* Added some picture composition functions to Core.Picture.\nThese are useful for testing where the type class\ncomplications of Extra.PictureLanguage are an overhead.\n\n* Added iRGB to Core.Colour - create RGB colours with\ninteger components [0..255] - and iHSB, iGrey.\n\n* Added some test modules for the affine transformations.\nThese illustrate a quirk in Wumpus where, under affine\ntransformation, Pictures may generate a larger bounding box\nthan composite primitives.\n\n* Minor change - ztextlabal changed to use 24pt type rather\nthan 12pt.\n\n* Corrected the cabal file to include the correct files for\nthe manual. The Haskell source file @WorldFrame.hs@ was\nmissing with the generated file @WorldFrame.eps@ incorrectly\nincluded instead.\n\n0.16.0 to 0.17.0:\n\n* Added Core.WumpusTypes to export opaque versions of\ndatatypes from Core.PictureInternal. This should make\nthe Haddock documentation more cohesive.\n\n* Moved the Core.PictureLanguage module into the Extra\nnamespace (Extra.PictureLanguage). This module may change\nin detail, if not in spirit in the future as I'm not\nvery happy with it. Also this module is somewhat\n\\\"higher-level\\\" than the modules in wumpus-core, so\na different home seems fitting.\n\n* Removed CardinalPoint and boundaryPoint from BoundingBox.\n\n* Argument order of 'textlabel' and 'ztextlabel' changed so\nthat Point2 is the last argument.\n\n* PathSegment constructor names changed - this is an internal\nchange as the constructors are not exported.\n\n* Primitive type changed - moved Ellipse properties into\nPrimEllipse type - internal change.\n\n* Removed dependency on \\'old-time\\'.\n\n0.15.0 to 0.16.0:\n\n* Additions to Core.Geometry (direction, pvec, vangle,\ncircularModulo).\n\n* Fixed error with langle due to not accounting for circle\nquadrants in Core.Geometry.\n\n* Point2 now derives Ord - so it can be used as a key for\nData.Map.\n\n* Added escape-character handling to text output in PostScript.\nThis was causing a nasty bug where a drawing would completely\nfail when special chars shown (GhostView gives little hint of\nwhat is wrong when such errors are present).\n\n* Changed BoundingBox operation 'corners' to return a 4-tuple\nrather than a list.\n\n* Added centeredAt to PictureLanguage\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."monadLib" or (buildDepError "monadLib"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."algebra" or (buildDepError "algebra"))
          ];
        buildable = true;
        };
      };
    }