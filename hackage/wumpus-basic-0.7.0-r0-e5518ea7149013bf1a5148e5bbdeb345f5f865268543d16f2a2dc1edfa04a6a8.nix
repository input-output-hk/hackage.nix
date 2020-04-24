{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wumpus-basic"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Common drawing utilities built on wumpus-core.";
      description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha. It was released\nto Hackage prematurely - designing a higher-level drawing\nlibrary turns out to be much more demanding than designing a\nlow-level one (Wumpus-Core).\n\nA few of the modules (SafeFonts, SVGColours, X11Colours) are\nfairly stable others simply aren\\'t and may even disappear in\nsubsequent updates.\n\n\nChangelog:\n\n0.6.0 to 0.7.0:\n\n* Major rework of Graphic types, the old types (AGraphic,\nGraphicF etc.) and the old drawing monads have been removed.\nThe new types are based on the AGraphic and related types but\ntheir implementation is different. The new types track the\n/graphics state/ within the type (the DrawingContext) plus\nhow to draw themselves. For real drawings, graphics are\ncollected with a Writer-like monad the @Basic.Graphic.Drawing@\nmonad which replaces the DrawingCtx and Trace monads. The\nTurtle monad remains and has been updated to work with the new\ndrawing monads.\n\n* LRText and LRSymbol modules temporarily removed as they\ncontradict the new, optimized kerning functionality in\n@Wumpus.Core@.\n\n0.5.0 to 0.6.0:\n\n* Updates to work with wumpus-core-0.30.0.\n\n* The code from @Basic.Graphic@ has been moved in to\n@Basic.Graphic.Primitive@ - this module is due a major\noverhaul. @Basic.Graphic@ is now an /import/ shim for\n@Basic.Graphic.Primitive@.\n\n0.4.0 to 0.5.0:\n\n* Re-worked the PictureLanguage module.\n\n* SVGColours and X11Colours moved into @Wumpus.Basic.Colour@.\nNaming scheme for colours changed to use underscore between\nwords rather than camelCase.\n\n* Updates to work with wumpus-core-0.30.0.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."wumpus-core" or ((hsPkgs.pkgs-errors).buildDepError "wumpus-core"))
          ];
        buildable = true;
        };
      };
    }