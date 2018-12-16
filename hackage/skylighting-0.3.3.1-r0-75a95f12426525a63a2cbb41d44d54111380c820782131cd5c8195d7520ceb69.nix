{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      bootstrap = false;
      executable = false;
      system-pcre = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "skylighting";
        version = "0.3.3.1";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.aeson)
          (hsPkgs.case-insensitive)
          (hsPkgs.attoparsec)
          (hsPkgs.utf8-string)
          (hsPkgs.hxt)
          (hsPkgs.safe)
          (hsPkgs.blaze-html)
          (hsPkgs.containers)
        ] ++ (if flags.system-pcre
          then [ (hsPkgs.regex-pcre) ]
          else [
            (hsPkgs.regex-pcre-builtin)
          ]);
      };
      exes = {
        "skylighting-extract" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.safe)
            (hsPkgs.hxt)
            (hsPkgs.utf8-string)
            (hsPkgs.case-insensitive)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ] ++ (if flags.system-pcre
            then [ (hsPkgs.regex-pcre) ]
            else [
              (hsPkgs.regex-pcre-builtin)
            ]);
        };
        "skylighting" = {
          depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.Diff)
            (hsPkgs.text)
            (hsPkgs.pretty-show)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.skylighting)
          ];
        };
      };
      benchmarks = {
        "benchmark-skylighting" = {
          depends = [
            (hsPkgs.skylighting)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }