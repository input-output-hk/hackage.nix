{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bootstrap = false;
      executable = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "skylighting";
        version = "0.1.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "(C) 2016 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/skylighting";
      url = "";
      synopsis = "syntax highlighting library";
      description = "Skylighting is a syntax highlighting library with\nsupport for over one hundred languages.  It derives\nits tokenizers from XML syntax definitions used\nby KDE's KSyntaxHighlighting framework, so any\nsyntax supported by that framework can be added.\nAn optional command-line program is provided.\nSkylighting is intended to be the successor to\nhighlighting-kate.";
      buildType = "Simple";
    };
    components = {
      "skylighting" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.aeson)
          (hsPkgs.case-insensitive)
          (hsPkgs.utf8-string)
          (hsPkgs.hxt)
          (hsPkgs.safe)
          (hsPkgs.blaze-html)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "skylighting-extract" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.safe)
            (hsPkgs.hxt)
            (hsPkgs.utf8-string)
            (hsPkgs.case-insensitive)
            (hsPkgs.aeson)
            (hsPkgs.pretty-show)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ];
        };
        "skylighting" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.pretty-show)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-html)
            (hsPkgs.skylighting)
          ];
        };
      };
      tests = {
        "test-skylighting" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.Diff)
            (hsPkgs.text)
            (hsPkgs.pretty-show)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.QuickCheck)
            (hsPkgs.skylighting)
          ];
        };
      };
    };
  }