{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-core"; version = "0.30.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "\nWumpus - (W)riter (M)onad (P)ost (S)cript.\n\nWumpus is a kernel library for generating 2D vector pictures,\nits salient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@, is minimized.\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to geometric objects. Unlike PostScript there is no\nnotion of a current point, Wumpus builds pictures in a\ncoordinate-free style.\n\nGENERAL DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. There is a supplemantary package @wumpus-basic@\navailable that helps create certain types of diagram, but it is\nexperimental - functionality is added an dropped between\nreleases.\n\nSome of the design decisions made for wumpus-core are not\nsophisticated (e.g. how attributes like colour are handled,\nand how the bounding boxes of text labels are calculated), so\nWumpus might be limited compared to other systems. However,\nthe design permits a fairly simple implementation - which is\na priority. Text encoding an exception - I\\'m not sure how\nreasonable the design is. The current implementation\nappears okay for Latin 1 but may be inadequate for other\ncharacter sets, so I may have to revise it significantly.\n\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool\nto convert Wumpus'\\s EPS files to many other formats\n(bitmaps).\n\nChangelog:\n\n0.23.0 to 0.30.0:\n\n* Substantial changes - the output machinery has been heavily\nmodified, the intention was to reduce the use of matrix\ntransformations in SVG output. Though this goal has not been\nachieved, some code-size improvements in the SVG output have\nbeen made.\n\n* The code generation monads have been changed - Wumpus no\nlonger uses a writer monad for code generation, but it will\nkeep the Wumpus name.\n\n* Added support for hyperlinks in the SVG output.\n\n* Improved internal pretty printing and added the function\n@printPicture@ for debugging.\n\n* The @Core.Colour@ module has been simplified to support just\none (new) type - RGBi, and the conversion type class\n@PSColour@ has been eliminated.\n\n* @Core.Picture@ - the type of the @frame@ function has been\nchanged to take a list of Primitives rather than a single\nPrimitive. The function @frameMulti@ which previously\nprovided this functionality has been removed. SVG hyperlinks\nare now supported for Primitives.\n\n* The default font size has been changed to 14 pt.\n\n* The Path datatype has been renamed PrimPath, likewise Ellipse\nis now PrimEllispe and Label becomes PrimLabel.\n\n* @Core.Geometry@ now longer defines an affine frame datatype.\n\n* @Core.BoundingBox@ module changed significantly. The corner\nfunctions (@boundaryBottomLeft@, etc.) have been removed,\nalong with the plane functions (@leftPlane@, etc.). Some\nfunctions have been given more verbose names - @corners@ is\nnow @boundaryCorners@, @within@ is now @withinBoundary@ and\n@union@ is now @boundaryUnion@.\n\n0.22.0 TO 0.23.0:\n\n* @Basic.GraphicsState@ - extracted the font face fields from\n@FontAttr@ datatype into a separate datatype @FontFace@.\n\n* Added @PtSize@ a numeric type wrapping Double. This is\nspecifically for text size calculations, vis the\n@Core.FontSize@ module.\n\n* Changed all functions in @Core.FontSize@ to return @PtSize@\ninstead of a polymorphic type @u@ (where @u@ is an instance\nof Fractional). To get to another unit type rather than\nFontSize use an explicit conversion that scales the value\naccordingly.\n\n* Added FromPtSize class constraints to various functions in\n@Core.Picture@.\n\n* Added @charWidth@ to @Core.FontSize@.\n\n* Added @vlength@ to @Core.Geometry@\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
          ];
        buildable = true;
        };
      };
    }