{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cairo = false;
      gtk = false;
      svg = true;
      ps = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Brent Yorgey";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "Embedded domain-specific language for declarative vector graphics";
        description = "Diagrams is a full-featured framework and embedded domain-specific langauge for creating\ndeclarative vector graphics and animations.\n\nThis package is just a convenient wrapper\naround the @diagrams-core@, @diagrams-lib@ and\n@diagrams-contrib@ packages, so they can be\ninstalled with a single @cabal install diagrams@\ncommand.\n\nThe package also comes with flags to enable four\ndifferent backends.\nA Haskell-native SVG\nbackend (the @diagrams-svg@ package)\ncan be selected with @-fsvg@. This\nflag is enabled by default, so if you do /not/\nwant the SVG backend, you must explicitly\ndisable it with @-f-svg@.  The SVG backend does not\nyet quite support all the features of the cairo\nbackend: text alignment and embedded images are\nthe two main missing features at this point, and\nof course it can only produce SVG images. It is,\nhowever, much easier to install, so it is the\nout-of-the-box default.\n\nThere is also a cairo backend (the\n@diagrams-cairo@ package) which can be selected\nwith the @-fcairo@ flag. It is fully-featured and\ncan produce PNG, PS, PDF, or SVG output; however,\ndue to its dependencies it can be difficult to\ninstall on some platforms (notably OS X).\n\nIn addition, there is a GTK backend based on the\ncairo backend, for rendering diagrams directly to\nGTK windows. You can enable it with the @-fgtk@ flag.\n\nFinally, there is a Haskell-native postscript\nbackend (the @diagrams-postscript@ package) which\ncan be selected with the @-fps@ flag.  The only\nfeature it does not support is transparency.\n\nFor more information, including a gallery of\nexamples, tutorial, and user manual, see the\ndiagrams website:\n<http://projects.haskell.org/diagrams>.  For\nhelp, join the @#diagrams@ IRC channel on\nFreenode or the mailing list:\n<http://groups.google.com/group/diagrams-discuss>.";
        buildType = "Simple";
      };
      components = {
        "diagrams" = {
          depends  = ((([
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-contrib
          ] ++ pkgs.lib.optional _flags.cairo hsPkgs.diagrams-cairo) ++ pkgs.lib.optional _flags.gtk hsPkgs.diagrams-gtk) ++ pkgs.lib.optional _flags.svg hsPkgs.diagrams-svg) ++ pkgs.lib.optional _flags.ps hsPkgs.diagrams-postscript;
        };
      };
    }