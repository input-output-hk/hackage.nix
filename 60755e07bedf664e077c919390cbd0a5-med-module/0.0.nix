{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildexamples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "med-module";
        version = "0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Claude Heiland-Allen, Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Parse song module files from Amiga MED and OctaMED";
      description = "MED (Music EDitor) and its successor OctaMED\nwere popular music trackers on the Amiga:\n<https://en.wikipedia.org/wiki/OctaMED>.\nThis is a library for parsing the binary module data.\n\nWith the Cabal flag @-fbuildExamples@ you can build two example programs:\n\n* @unmed2@:\nLoads song module files and show their content on standard output.\n\n* @animed@:\nCreate a PostScript document showing how a song is played.\nAlso creates an FFmpeg cue file for the @concat@ input type.\nThis way you can create videos with MED music\nplus precisely timed animations of the played tracks.\nSee the included @Makefile@ for the command calls\nfor creation of complete music videos from MMD files.";
      buildType = "Simple";
    };
    components = {
      "med-module" = {
        depends  = [
          (hsPkgs.storable-endian)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
      exes = {
        "unmed2" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.med-module)
            (hsPkgs.base)
          ];
        };
        "animed" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.med-module)
            (hsPkgs.hps)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.array)
            (hsPkgs.transformers)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }