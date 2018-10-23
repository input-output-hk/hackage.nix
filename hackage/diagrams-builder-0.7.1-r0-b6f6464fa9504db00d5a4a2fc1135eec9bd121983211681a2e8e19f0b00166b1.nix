{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      cairo = false;
      svg = false;
      ps = false;
      postscript = false;
      rasterific = false;
      pgf = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "diagrams-builder";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "hint-based build service for the diagrams graphics EDSL.";
      description = "@diagrams-builder@ provides backend-agnostic tools for\ndynamically turning code into rendered diagrams,\nusing the @hint@ wrapper to the GHC API.  It\nsupports conditional recompilation using hashing\nof diagrams source code, to avoid recompiling\ncode that has not changed.  It is useful for\ncreating tools which compile diagrams code\nembedded in other documents.  For example, it is\nused by the @BlogLiterately-diagrams@ package (a\nplugin for @BlogLiterately@) to compile diagrams\nembedded in Markdown-formatted blog posts.\n\nExecutables specific to the cairo, SVG, postscript,\nand rasterific\nbackends are included (more executables specific\nto other backends may be included in the future).\nAll take an input file and an expression to\nrender, and output an image file.  If you want\nthese executables you must explicitly enable the\n@-fcairo@, @-fsvg@, @-fpostscript@, or @-frasterific@ flags.\n\nA LaTeX package, @diagrams-latex.sty@, is also\nprovided in the @latex/@ directory of the source\ndistribution, which renders diagrams code found\nwithin @diagram@ environments. Note that\n@diagrams-latex.sty@ is licensed under the GPL.";
      buildType = "Simple";
    };
    components = {
      "diagrams-builder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.mtl)
          (hsPkgs.diagrams-lib)
          (hsPkgs.hint)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.split)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.cmdargs)
          (hsPkgs.lens)
          (hsPkgs.hashable)
          (hsPkgs.exceptions)
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
            (hsPkgs.lens)
          ];
        };
        "diagrams-builder-svg" = {
          depends  = pkgs.lib.optionals (flags.svg) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.diagrams-builder)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            (hsPkgs.lucid-svg)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
          ];
        };
        "diagrams-builder-ps" = {
          depends  = pkgs.lib.optionals (flags.ps || flags.postscript) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.diagrams-builder)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-postscript)
            (hsPkgs.cmdargs)
            (hsPkgs.lens)
          ];
        };
        "diagrams-builder-rasterific" = {
          depends  = pkgs.lib.optionals (flags.rasterific) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.diagrams-builder)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.cmdargs)
            (hsPkgs.lens)
            (hsPkgs.JuicyPixels)
          ];
        };
        "diagrams-builder-pgf" = {
          depends  = pkgs.lib.optionals (flags.pgf) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.diagrams-builder)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-pgf)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }