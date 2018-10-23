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
        version = "0.50.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "\nWumpus-Core is a low-level library for generating static 2D\nvector pictures, its salient feature is portability due to no\nFFI dependencies. It can generate PostScript (EPS) files and SVG\nfiles. The generated PostScript code is plain and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@, is minimized.\n\nAlthough Wumpus-Core only generates vector output, the generated\nPostScript can be interpreted by GraphicsMagick or a similar\ntool to convert EPS files into bitmap image files (e.g JPEGs).\n\nWumpus-Core makes pictures from /paths/ and text /labels/. Paths\nthemselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to Pictures. Unlike PostScript there is no notion of a\ncurrent point, Wumpus-Core builds pictures in a coordinate-free\nstyle.\n\nGENERAL DRAWBACKS...\n\nFor actually building pictures, diagrams, etc. Wumpus-Core is\nvery low-level. There are two supplementary packages\n@Wumpus-Basic@ and @Wumpus-Drawing@ also on Hackage that aim to\nbe a higher-level basis for creating certain types of diagram,\nbut they are experimental - functionality is added and dropped\nbetween releases and curently the API is too unstable to write\ncode upon (they should be considered a technology preview rather\nthan re-usable libraries).\n\nAlso, some of the design decisions made for Wumpus-Core are not\nsophisticated - e.g. how path and text attributes like colour\nare handled, and how the bounding boxes of text labels are\ncalculated. Compared to other systems, Wumpus might be rather\nlimited, however, the design permits a fairly simple\nimplementation.\n\n\nChangelog:\n\nv0.43.0 to v0.50.0:\n\n* Major change hence the version number jump - the notion of\nparametric unit has been removed from the @Picture@ objects\n(it for remains the @Geometric@ objects @Point2@, @Vec2@ etc.).\nCertain useful units, e.g. @em@ and @en@, are contextual on\nthe \\\"current point size\\\", and having a parametric unit here\nwas actually a hinderance to supporting units properly in\nhigher-level layers. Now all Picture objects (those defined\nor exported from @Core.Picture@) are fixed to use Double\n- representing PostScript points. Higher level layers that\nintend to support alternative units must translate drawing\nobjects to PostScript point measurements /before/ calling the\nPicture API. Geometric objects - objects defined in\n@Core.Geometry@, e.g. @Point2@, @Vec2@ - are still polymorphic\non unit.\n\n* Picture API change - Various function names changed.\n@lineTo@ becomes @absLineTo@ and @curveTo@ becomes\n@absCurveTo@. The path builders are qualified with /Prim/,\n@vertexPath@ becomes @vertexPrimPath@, @vectorPath@ becomes\n@vectorPrimPath@, @emptyPath@ becomes @emptyPrimPath@ and\n@curvedPath@ becomes @curvedPrimPath@. @xlink@ becomes\n@xlinkPrim@.\n\n* API change - @PtSize@ data type replaced by @AfmUnit@ for font\nmeasurements.\n\n* API and representation change - clipping paths are represented\nas @Primitive@ constructor rather than a @Picture@ constructor.\nThis should make them more useful. The type of the function\n@clip@ in @Core.Picture@ has likewise changed.\n\n* Picture API change - changed @primPath@ to @absPrimPath@, added\nthe functions @relPrimPath@, @relLineTo@, @relCurveTo@.\n\n* Added the class @Tolerance@ to @Core.Geometry@ and made the Eq\ninstances of @Point2@, @Vec2@ and @BoundingBox@ tolerant.\nTolerance accounts for a fairly lax equality on floating point\nnumbers - it is suitable for Wumpus (printing) where high\naccuracy is needed.\n\nv0.42.1 to v0.43.0:\n\n* API change - the function @bezierCircle@ in @Core.Geometry@\nhas changed. It now implements a better method of drawing\ncircles with Bezier curves and no longer needs the\nsubvision factor. The old circle drawing function has been\nretained as @subdivisionCircle@ as it is useful for\ncorroborating @bezierCircle@, but the general use of\n@subdivisionCircle@ should be avoided.\n\n* Added a function @bezierEllipse@ to @Core.Geometry@.\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.vector-space)
        ];
      };
    };
  }