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
    flags = {
      cairo = false;
      gtk = false;
      svg = true;
      ps = false;
      postscript = false;
      rasterific = false;
      canvas = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Embedded domain-specific language for declarative vector graphics";
      description = "Diagrams is a full-featured framework and embedded domain-specific langauge for creating\ndeclarative vector graphics and animations.\n\nThis package is just a convenient wrapper\naround the @diagrams-core@, @diagrams-lib@ and\n@diagrams-contrib@ packages, so they can be\ninstalled with a single @cabal install diagrams@\ncommand.\n\nThe package also comes with flags to enable six\ndifferent backends.\nA Haskell-native SVG\nbackend (the @diagrams-svg@ package)\ncan be selected with @-fsvg@. This\nflag is enabled by default, so if you do /not/\nwant the SVG backend, you must explicitly\ndisable it with @-f-svg@.  The SVG backend does not\nyet quite support all the features of the cairo\nbackend: text alignment and embedded images are\nthe two main missing features at this point, and\nof course it can only produce SVG images. It is,\nhowever, much easier to install, so it is the\nout-of-the-box default.\n\nThere is also a cairo backend (the\n@diagrams-cairo@ package) which can be selected\nwith the @-fcairo@ flag. It is fully-featured and\ncan produce PNG, PS, PDF, SVG, or animated\nGIF output; however,\ndue to its dependencies it can be difficult to\ninstall on some platforms (notably OS X).\n\nIn addition, there is a GTK backend based on the\ncairo backend, for rendering diagrams directly to\nGTK windows. You can enable it with the @-fgtk@ flag.\n\nThe Haskell-native postscript\nbackend (the @diagrams-postscript@ package)\ncan be selected with the @-fpostscript@ flag.  The only\nfeature it does not support is transparency.\n\nThere is a Rasterific backend which is\nalso Haskell-native (the @diagrams-rasterific@\npackage) which can be selected with the @-frasterific@\nflag. This is a fully featured backend with the ability\nto produce PNG, JPG, TIFF, BMP and animated GIF output.\n\nFinally there is a Canvas backend, also haskell native,\nwhich can be selected with the @-fcanvas@ flag. This\nbackend allows users to write interactive images onto\ntheir web browsers.\n\nFor more information, including a gallery of\nexamples, tutorial, and user manual, see the\ndiagrams website:\n<http://projects.haskell.org/diagrams>.  For\nhelp, join the @#diagrams@ IRC channel on\nFreenode or the mailing list:\n<http://groups.google.com/group/diagrams-discuss>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-contrib" or (errorHandler.buildDepError "diagrams-contrib"))
        ] ++ pkgs.lib.optional (flags.cairo) (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))) ++ pkgs.lib.optional (flags.gtk) (hsPkgs."diagrams-gtk" or (errorHandler.buildDepError "diagrams-gtk"))) ++ pkgs.lib.optional (flags.svg) (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))) ++ pkgs.lib.optional (flags.ps || flags.postscript) (hsPkgs."diagrams-postscript" or (errorHandler.buildDepError "diagrams-postscript"))) ++ pkgs.lib.optional (flags.rasterific) (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))) ++ pkgs.lib.optional (flags.canvas) (hsPkgs."diagrams-canvas" or (errorHandler.buildDepError "diagrams-canvas"));
        buildable = true;
      };
    };
  }