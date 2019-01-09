{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "scope-cairo"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conrad@metadecks.org";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "An interactive renderer for plotting time-series data";
      description = "scope-cairo is a Cairo rendering backend for scope, which is a\na framework for plotting time-series data using zoom-cache files.\n\nFor more information on scope and zoom-cache, see their packages:\n\n<http://hackage.haskell.org/package/scope>\n\n<http://hackage.haskell.org/package/zoom-cache>\n\nThis package includes a Gtk/Cairo application. It's a desktop\napplication with a /File/ menu; remember those? wow! This will probably\nbe split out into a separate package later, and there'll be a webby\njavascripty version too, but for now there's this desktop app.\n\nTo run it, simply:\n\n@\n\$ cabal install gtk2hs-buildtools scope-cairo\n\$ scope-cairo\n@\n\nThen, select /File->Open/ from the menubar, with your mouse: there's no\nswiping gestures back here, baby! Four (yes, 4) demo files are included\nin this version of the package. Choose one, and it will be drawn in the\nwindow. Amazing! It should look something like what you saw in the post\nyou read about this in, but more personal because now it's happening to\nyou.\n\nZoom in with the scroll wheel on your mouse. If you don't have a scroll\nwheel, use the Up and Down arrow keys on your keyboard. If you don't have\nup and down arrows /you are elite/!\n\nPan around by dragging it. There's a scrollbar too if you're into that.\n\nLoad up another file! It will also be drawn. Zoom in and out and pan\naround, yay! Life is gooood!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.cairo)
          (hsPkgs.gtk)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.scope)
          (hsPkgs.time)
          (hsPkgs.zoom-cache)
          ] ++ [ (hsPkgs.base) ];
        };
      exes = {
        "scope-cairo" = {
          depends = [
            (hsPkgs.cairo)
            (hsPkgs.gtk)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.scope)
            (hsPkgs.time)
            (hsPkgs.zoom-cache)
            ] ++ [ (hsPkgs.base) ];
          };
        };
      };
    }