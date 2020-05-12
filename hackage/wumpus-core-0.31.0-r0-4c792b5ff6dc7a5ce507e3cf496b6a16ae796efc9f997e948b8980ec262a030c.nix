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
      identifier = { name = "wumpus-core"; version = "0.31.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation. ";
      description = "\nWumpus is a kernel library for generating 2D vector pictures,\nits salient feature is portability due to no FFI dependencies.\nIt can generate PostScript (EPS) files and SVG files. The\ngenerated PostScript code is plain [1] and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@, is minimized.\n\nPictures in Wumpus are made from /paths/ and text /labels/.\nPaths themselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to Pictures. Unlike PostScript there is no\nnotion of a current point, Wumpus builds pictures in a\ncoordinate-free style.\n\nGENERAL DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow level. There is a supplemantary package @wumpus-basic@\navailable that helps create certain types of diagram, but it is\nexperimental - functionality is added an dropped between\nreleases.\n\nSome of the design decisions made for wumpus-core are not\nsophisticated (e.g. how attributes like colour are handled,\nand how the bounding boxes of text labels are calculated), so\nWumpus might be limited compared to other systems. However,\nthe design permits a fairly simple implementation, which is a\npriority.\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool\nto convert Wumpus'\\s EPS files to many other formats\n(bitmaps).\n\nChangelog:\n\n0.30.0 to 0.31.0:\n\n* Extended the label type to optionally handle horizontal\nor vertical \\\"kerning\\\". This can be efficiently implemented\nin SVG.\n\n* Major API change - the Primitive constructors defined in\n@Core.PictureLanguage@ are no longer overloaded (@cstroke@,\n@ostroke@, @fill@, @textlabel@, @ellipse@). The respective\nclasses (@Stroke@, @TextLabel@, @Ellipse@) have been removed\nand the constructors now have monomorphic types. This is\nbecause Wumpus-Core now only has one colour type and stroke\nattributes are now a single type, so polymorphism became\nless useful (and the simplicity of monomorphic types became\nmore favourable). @ellipse@ is no longer a constructor\ninstead there variants @fillEllipse@ and @strokeEllipse@.\n\n* Added support for /bordered/ closed paths - i.e. paths that\nare both stroked and filled. These can be efficiently drawn\nin SVG with a single @path@ element.\n\n* Changed StrokeAttr representation to be a regular data type\nrather than a list of /deltas/ - i.e. differences to the\ngraphics state.\n\n* Added SVG font attribute /delta optimizations/ to help reduce\nSVG code size - via the @fontDeltaContext@ function in\n@Core.Picture@. This functionality was partially inplemented\nin the last release using the @GSUpdate@ datatype - this\ndatatype it is now called @FontCtx@.\n\n* Some internal work documenting text encoding.\n\n0.23.0 to 0.30.0:\n\n* Substantial changes - the output machinery has been heavily\nmodified, the intention was to reduce the use of matrix\ntransformations in SVG output. Though this goal has not been\nachieved, some code-size improvements in the SVG output have\nbeen made.\n\n* The code generation monads have been changed - Wumpus no\nlonger uses a writer monad for code generation, but it will\nkeep the Wumpus name.\n\n* Added support for hyperlinks in the SVG output.\n\n* Improved internal pretty printing and added the function\n@printPicture@ for debugging.\n\n* The @Core.Colour@ module has been simplified to support just\none (new) type - RGBi, and the conversion type class\n@PSColour@ has been eliminated.\n\n* @Core.Picture@ - the type of the @frame@ function has been\nchanged to take a list of Primitives rather than a single\nPrimitive. The function @frameMulti@ which previously\nprovided this functionality has been removed. SVG hyperlinks\nare now supported for Primitives.\n\n* The default font size has been changed to 14 pt.\n\n* The Path datatype has been renamed PrimPath, likewise Ellipse\nis now PrimEllispe and Label becomes PrimLabel.\n\n* @Core.Geometry@ now longer defines an affine frame datatype.\n\n* @Core.BoundingBox@ module changed significantly. The corner\nfunctions (@boundaryBottomLeft@, etc.) have been removed,\nalong with the plane functions (@leftPlane@, etc.). Some\nfunctions have been given more verbose names - @corners@ is\nnow @boundaryCorners@, @within@ is now @withinBoundary@ and\n@union@ is now @boundaryUnion@.\n\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
          ];
        buildable = true;
        };
      };
    }