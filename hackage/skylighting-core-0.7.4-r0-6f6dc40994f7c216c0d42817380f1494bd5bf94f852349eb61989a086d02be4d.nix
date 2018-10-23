{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      executable = false;
      system-pcre = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "skylighting-core";
        version = "0.7.4";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2016-2018 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/skylighting";
      url = "";
      synopsis = "syntax highlighting library";
      description = "Skylighting is a syntax highlighting library.\nIt derives its tokenizers from XML syntax\ndefinitions used by KDE's KSyntaxHighlighting\nframework, so any syntax supported by that\nframework can be added. An optional command-line\nprogram is provided.\nSkylighting is intended to be the successor to\nhighlighting-kate.\nThis package provides the core highlighting\nfunctionality under a permissive license. It also\nbundles XML parser definitions licensed under the\nGPL.";
      buildType = "Simple";
    };
    components = {
      "skylighting-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
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
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.containers)
          (hsPkgs.ansi-terminal)
          (hsPkgs.colour)
        ] ++ (if flags.system-pcre
          then [ (hsPkgs.regex-pcre) ]
          else [
            (hsPkgs.regex-pcre-builtin)
          ]);
      };
      exes = {
        "skylighting-extract" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.skylighting-core)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.text)
            (hsPkgs.safe)
            (hsPkgs.hxt)
            (hsPkgs.utf8-string)
            (hsPkgs.case-insensitive)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.ansi-terminal)
            (hsPkgs.colour)
          ] ++ (if flags.system-pcre
            then [ (hsPkgs.regex-pcre) ]
            else [
              (hsPkgs.regex-pcre-builtin)
            ]);
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
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.Diff)
            (hsPkgs.text)
            (hsPkgs.pretty-show)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.skylighting-core)
          ];
        };
      };
      benchmarks = {
        "benchmark-skylighting" = {
          depends  = [
            (hsPkgs.skylighting-core)
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