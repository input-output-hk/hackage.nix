{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wumpus-basic";
        version = "0.8.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Common drawing utilities built on wumpus-core.";
      description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha. It was released\nto Hackage prematurely - designing a higher-level drawing\nlibrary turns out to be much more demanding than designing a\nlow-level one (Wumpus-Core).\n\nA few of the modules (SafeFonts, SVGColours, X11Colours) are\nfairly stable others simply aren\\'t and may even disappear in\nsubsequent updates.\n\n\nChangelog:\n\n0.7.0 to 0.8.0:\n\n* Re-introduced LRText and LRSymbol - they now work with\nWumpus-Core\\'s kerning support.\n\n* Changes to @Graphic.Basic.BaseTypes@ - @DrawingObject@\nrenamed to @DrawingF@. @HPrim@ wrapped as a newtype to\nsupport a Monoid instance. Removed @appendGraphic@ and @gcat@\nas they can be achieved with @mappend@ and @mconcat@.\n@appendAt@ renamed to @lgappend@. @PointT@ remaned to\n@PointF@.\n\n* Changes to @Graphic.Basic.Drawing@ - @drawAt@, @drawAtImg@,\n@drawConn@, @drawConnImg@ all removed. They are replaced\nby @draw@ and @drawi@ together with then new @at@ and @conn@\ncombinators.\n\n* Changes to @Basic.Graphic.PrimGraphic@ - @localDrawingContext@\nrenamed to @localLG@ and moved to @Basic.Graphic.BaseTypes@.\n\n* Updates to @Basic.SafeFonts@ to work with changes to\n@Wumpus.Core@.\n\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
        ];
      };
    };
  }