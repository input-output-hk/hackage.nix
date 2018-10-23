{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { cairo = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "diagrams-builder";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "hint-based build service for the diagrams graphics EDSL.";
      description = "@diagrams-builder@ provides backend-agnostic tools for\ndynamically turning code into rendered diagrams,\nusing the @hint@ wrapper to the GHC API.  It\nsupports conditional recompilation using hashing\nof diagrams source code, to avoid recompiling\ncode that has not changed.  It is useful for\ncreating tools which compile diagrams code\nembedded in other documents.  For example, it is\nused by the @BlogLiterately-diagrams@ package (a\nplugin for @BlogLiterately@) to compile diagrams\nembedded in Markdown-formatted blog posts.\n\nAn executable specific to the cairo backend is\nincluded (more executables specific to other\nbackends will be included in the future).  It\ntakes an input file and an expression to render\nand outputs an image file, using the cairo\nbackend.  If you want it you must explicitly\nenable the cairo flag with @-fcairo@.\n\nA LaTeX package, @diagrams-latex.sty@, is also\nprovided in the @latex/@ directory of the source\ndistribution, which renders diagrams code found\nwithin @diagram@ environments.  It makes use of\nthe @diagrams-builder-cairo@ executable, so if\nyou want to use @diagrams-latex.sty@ you should\ninstall @diagrams-builder@ with the @-fcairo@\noption.  Note that @diagrams-latex.sty@ is\nlicensed under the GPL.";
      buildType = "Simple";
    };
    components = {
      "diagrams-builder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.diagrams-lib)
          (hsPkgs.hint)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.cryptohash)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
        ];
      };
      exes = {
        "diagrams-builder-cairo" = {
          depends  = pkgs.lib.optionals (flags.cairo) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.diagrams-builder)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }