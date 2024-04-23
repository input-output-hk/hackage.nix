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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "termonad"; version = "4.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2021 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/termonad";
      url = "";
      synopsis = "Terminal emulator configurable in Haskell";
      description = "Termonad is a terminal emulator configurable in Haskell.  It is extremely\ncustomizable and provides hooks to modify the default behavior.  It can be\nthought of as the \\\"XMonad\\\" of terminal emulators.  Termonad was featured on\nan <https://www.youtube.com/watch?v=TLNr_gBv5HY episode> of\n<https://www.youtube.com/channel/UCVls1GmFKf6WlTraIb_IaJg DistroTube>.  This\nvideo gives a short overview of Termonad.\n\nPlease see <https://github.com/cdepillabout/termonad#readme README.md> for\nmore information.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."focuslist" or (errorHandler.buildDepError "focuslist"))
          (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
          (hsPkgs."gi-gdkpixbuf" or (errorHandler.buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-gio" or (errorHandler.buildDepError "gi-gio"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."gi-pango" or (errorHandler.buildDepError "gi-pango"))
          (hsPkgs."gi-vte" or (errorHandler.buildDepError "gi-vte"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-html-qq" or (errorHandler.buildDepError "xml-html-qq"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
          (pkgconfPkgs."libpcre2-8" or (errorHandler.pkgConfDepError "libpcre2-8"))
          (pkgconfPkgs."vte-2.91" or (errorHandler.pkgConfDepError "vte-2.91"))
        ];
        buildable = true;
      };
      exes = {
        "termonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
          ];
          buildable = true;
        };
        "termonad-readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "termonad-example-colour-extension" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "termonad-example-colour-extension-dracula" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "termonad-example-colour-extension-gruvbox" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "termonad-example-colour-extension-oneDarkPro" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "termonad-example-colour-extension-papercolour" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "termonad-example-colour-extension-solarized" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
          ];
          buildable = true;
        };
        "termonad-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."termonad" or (errorHandler.buildDepError "termonad"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
    };
  }