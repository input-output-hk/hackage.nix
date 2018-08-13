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
        name = "wumpus-basic";
        version = "0.11.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Common drawing utilities built on wumpus-core.";
      description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha. It was released\nto Hackage prematurely - designing a higher-level drawing\nlibrary turns out to be much more demanding than designing a\nlow-level one (Wumpus-Core).\n\nSome of the modules (SafeFonts, SVGColours, X11Colours) are\nrelatively stable. The core modules of @Basic.Graphic@ (@Base@,\n@PrimGraphic@, @DrawingContext@) seem to support a good set\nprimitive functions, but the exact types of drawing objects do\nnot feel right at the moment. Other modules (Paths, Chains,\nShapes) are essentially sketches and are expected to be\nsubstantially revised in subsequent updates.\n\nVersion 0.11.0 is an interim release. It is expected that the\nnext release will substantially rework Shapes and likely change\nthe @Graphic.Base@ types. As quite a large amount of code has\nalready changed since version 0.10.0 (to support better\narrowheads and connectors) it seems sensible to release 0.11.0\nnow, rather than have a huge delta after Shapes have been\nreworked again. The current versions of @Wumpus-Tree@ and\n@Wumpus-Microprint@ will work with version 0.11.0 if their\nrespective @.cabal@ files are edited to bump the version number.\nThere will be no matching releases to work automatically with\nversion 0.11.0 of Wumpus-Basic.\n\nChangelog:\n\n0.10.0 to 0.11.0:\n\n* Reworked arrowheads and connectors - connectors are now\nconfigurable: there are functions to make connectors with\na left arrowhead, right arrowhead, none or both.\n\n* Reworked shapes - internally shapes now create a @Path@ rather\nthan a @Graphic@ this means the path can be manipulated (e.g.\nround cornered rectangles, diamonds... can be constructed).\n@Coordinate@ is no longer a @Shape@ - it is now similar object\nbut of a different type. Likewise, @FreeLabel@ has been\nreplaced by @Plaintext@ which is not a @Shape@, but has some\nsimilar properties. Unfortunately, the Shape types are still\ndifficult to work with and a larger reworking is still\nnecessary.\n\n* @Basic.Paths.Base@ - @Path@ type changed, @PathEmpty@\nconstructor removed so empty paths cannot be created. This\nallows a better API for taking points on a path. It also\nmeans @Path@ is no longer an instance of Monoid. Type changes\nto various functions (e.g. @tipR@, @tipL@) reflecting that as\npaths cannot now be empty, functions on them can generally be\ntotal. @toPrimPathU@ removed as converting to a PrimPath as\nnow always /safe/. @tracePoints@ renamed @traceLinePoints@,\n@tracePointsCurve@ renamed @traceCurvePoints@, @midpoint@\nrenamed @midway@.\n\n* @Basic.Graphic@ - the types @ConnDrawingR@, @ConnGraphic@ etc.\nhave had their names expanded to @ConnectorDrawingR@,\n@ConnectorGraphic@...\n\n* @Basic.SafeFont@ - font names changed to use underscore\nseparators rather than camelCase. Wumpus generally uses\nunderscored names for /constants/.\n\n* Removed @conn@ from @Basic.Graphic.Drawing@. Connectors should\nbe used instead.\n\n* The class @DrawingCtxM@ now has @Applicative@ as a superclass.\n\n* @lineSpacing@ renamed @baselineSpacing@.\n\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-basic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
        ];
      };
    };
  }