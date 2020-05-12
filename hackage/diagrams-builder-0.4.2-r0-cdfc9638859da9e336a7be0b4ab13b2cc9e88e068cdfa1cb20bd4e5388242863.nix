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
    flags = { cairo = false; svg = false; ps = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-builder"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "hint-based build service for the diagrams graphics EDSL.";
      description = "@diagrams-builder@ provides backend-agnostic tools for\ndynamically turning code into rendered diagrams,\nusing the @hint@ wrapper to the GHC API.  It\nsupports conditional recompilation using hashing\nof diagrams source code, to avoid recompiling\ncode that has not changed.  It is useful for\ncreating tools which compile diagrams code\nembedded in other documents.  For example, it is\nused by the @BlogLiterately-diagrams@ package (a\nplugin for @BlogLiterately@) to compile diagrams\nembedded in Markdown-formatted blog posts.\n\nExecutables specific to the cairo, SVG, and postscript\nbackends are included (more executables specific\nto other backends may be included in the future).\nAll take an input file and an expression to\nrender, and output an image file.  If you want\nthese executables you must explicitly enable the\n@-fcairo@, @-fsvg@, or @-fps@ flags.\n\nA LaTeX package, @diagrams-latex.sty@, is also\nprovided in the @latex/@ directory of the source\ndistribution, which renders diagrams code found\nwithin @diagram@ environments. Note that\n@diagrams-latex.sty@ is licensed under the GPL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
        buildable = true;
        };
      exes = {
        "diagrams-builder-cairo" = {
          depends = (pkgs.lib).optionals (flags.cairo) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."diagrams-builder" or (errorHandler.buildDepError "diagrams-builder"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = if !flags.cairo then false else true;
          };
        "diagrams-builder-svg" = {
          depends = (pkgs.lib).optionals (flags.svg) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."diagrams-builder" or (errorHandler.buildDepError "diagrams-builder"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = if !flags.svg then false else true;
          };
        "diagrams-builder-ps" = {
          depends = (pkgs.lib).optionals (flags.ps) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."diagrams-builder" or (errorHandler.buildDepError "diagrams-builder"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-postscript" or (errorHandler.buildDepError "diagrams-postscript"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = if !flags.ps then false else true;
          };
        };
      };
    }