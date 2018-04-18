{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wumpus-basic";
          version = "0.10.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Common drawing utilities built on wumpus-core.";
        description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha. It was released\nto Hackage prematurely - designing a higher-level drawing\nlibrary turns out to be much more demanding than designing a\nlow-level one (Wumpus-Core).\n\nSome of the modules (SafeFonts, SVGColours, X11Colours) are\nrelatively stable. The core modules of @Basic.Graphic@ (@Base@,\n@PrimGraphic@, @DrawingContext@) are quite weather-beaten if\nnot exactly stable, although the newer modules\n(@ScalingContext@, @DirectionContext@) are still quite green.\nOther modules (Paths, Chains, Shapes) are essentially sketches\nand may be radically different in subsequent updates.\n\n\nChangelog:\n\n0.9.0 to 0.10.0:\n\n* @Basic.Graphic.BaseClasses@ and @Basic.Graphic.BaseTypes@\nmerged into same module so they can depend on each other\nwithout orphans instances.\n\n* @DrawingF@ renamed to @DrawingR@, the related type synonyms\nhave also been changed, e.g. @LocDrawingF@ is now\n@LocDrawingR@.\n\n* Method names in the @DrawingCtxM@ class changed - @askCtx@ is\nnow @askDC@, @localCtx@ is now @localize@. Removed the\nfunctions @askDF@, @asksDF@, @pureDF@ that worked for\n@DrawingF@ (now @DrawingR@), @DrawingR@ now uses the\nApplicative\\'s @pure@ and the @DrawingCtxM@ class for these\nfunctionalities.\n\n* @Basic.Graphic.DrawingContext@ - renamed @primary_colour@ to\n@stroke_colour@ and @secondary_colour@ to @fill_colour@. The\nsetter functions has been similarly renamed.\n\n* Added the type synonym @DrawingContextF@ to\n@Basic.Graphic.DrawingContext@. Changed relevant function\nsignatures to use it.\n\n* Re-worked the Path modules - base types entirely different,\nconnectors entirely different, monadic path construction\nlargely the same.\n\n* Initial work on round cornered paths.\n\n* Removed the type class @TextAnchor@ from @Basic.Anchors@.\nThis was a left-over from a previous implementation of\nShapes and is not relevant to the current implementation.\n\n* Added @DirectionContext@ to @Basic.Graphic@.\n\n* @localLG@ removed it can be acheived with composition -\n@localize upd . loc_graphic_function@. @lgappend@ is also\nremoved - it can be recreated applicatively.\n\n";
        buildType = "Simple";
      };
      components = {
        wumpus-basic = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector-space
            hsPkgs.wumpus-core
          ];
        };
      };
    }