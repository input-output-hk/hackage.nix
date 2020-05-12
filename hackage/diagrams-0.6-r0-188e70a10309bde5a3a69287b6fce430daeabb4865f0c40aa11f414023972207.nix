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
    flags = { cairo = false; svg = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Embedded domain-specific language for declarative vector graphics";
      description = "Diagrams is a full-featured framework and embedded domain-specific langauge for creating\ndeclarative vector graphics and animations.\n\nThis package is just a convenient wrapper\naround the @diagrams-core@, @diagrams-lib@ and\n@diagrams-contrib@ packages, so they can be\ninstalled with a single `cabal install diagrams`\ncommand.\n\nThe package also comes with flags to enable two\ndifferent backends.\nA Haskell-native SVG\nbackend (the @diagrams-svg@ package)\ncan be selected with @-fsvg@. This\nflag is enabled by default, so if you do /not/\nwant the SVG backend, you must explicitly\ndisable it with @-f-svg@.  The SVG backend does not\nyet quite support all the features of the cairo\nbackend: text alignment and embedded images are\nthe two main missing features at this point, and\nof course it can only produce SVG images. It is,\nhowever, much easier to install, so it is the\nout-of-the-box default.\n\nThere is also a cairo backend (the\n@diagrams-cairo@ package) which can be selected\nwith the @-fcairo@ flag. It is fully-featured and\ncan produce PNG, PS, PDF, or SVG output; however,\ndue to its dependencies it can be difficult to\ninstall on some platforms (notably OS X).\n\nFor more information, including a gallery of\nexamples, tutorial, and user manual, see the\ndiagrams website:\n<http://projects.haskell.org/diagrams>.  For\nhelp, join the @#diagrams@ IRC channel on\nFreenode or the mailing list:\n<http://groups.google.com/group/diagrams-discuss>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-contrib" or (errorHandler.buildDepError "diagrams-contrib"))
          ] ++ (pkgs.lib).optional (flags.cairo) (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))) ++ (pkgs.lib).optional (flags.svg) (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"));
        buildable = true;
        };
      };
    }