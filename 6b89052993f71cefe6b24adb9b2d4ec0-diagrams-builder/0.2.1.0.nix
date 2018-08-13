{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      cairo = false;
      svg = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "diagrams-builder";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "hint-based build service for the diagrams graphics EDSL.";
      description = "@diagrams-builder@ provides backend-agnostic tools for\ndynamically turning code into rendered diagrams,\nusing the @hint@ wrapper to the GHC API.  It\nsupports conditional recompilation using hashing\nof diagrams source code, to avoid recompiling\ncode that has not changed.  It is useful for\ncreating tools which compile diagrams code\nembedded in other documents.  For example, it is\nused by the @BlogLiterately-diagrams@ package (a\nplugin for @BlogLiterately@) to compile diagrams\nembedded in Markdown-formatted blog posts.\n\nExecutables specific to the cairo and SVG\nbackends are included (more executables specific\nto other backends may be included in the future).\nBoth take an input file and an expression to\nrender, and outputs an image file.  If you want\nthese executables you must explicitly enable the\n@-fcairo@ and/or @-fsvg@ flags.\n\nA LaTeX package, @diagrams-latex.sty@, is also\nprovided in the @latex/@ directory of the source\ndistribution, which renders diagrams code found\nwithin @diagram@ environments.  It makes use of\nthe @diagrams-builder-cairo@ executable, so if\nyou want to use @diagrams-latex.sty@ you should\ninstall @diagrams-builder@ with the @-fcairo@\noption.  Note that @diagrams-latex.sty@ is\nlicensed under the GPL.";
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
          (hsPkgs.cmdargs)
        ];
      };
      exes = {
        "diagrams-builder-cairo" = {
          depends  = pkgs.lib.optionals (_flags.cairo) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.diagrams-builder)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.cmdargs)
          ];
        };
        "diagrams-builder-svg" = {
          depends  = pkgs.lib.optionals (_flags.svg) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.diagrams-builder)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            (hsPkgs.blaze-svg)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }