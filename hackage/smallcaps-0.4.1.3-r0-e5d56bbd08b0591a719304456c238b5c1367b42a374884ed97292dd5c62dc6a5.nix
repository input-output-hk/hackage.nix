{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "smallcaps";
        version = "0.4.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stefan.berthold@gmx.net";
      author = "Stefan Berthold";
      homepage = "";
      url = "";
      synopsis = "Flatten camel case text in LaTeX files";
      description = "smallcaps is a pre-processor library for LaTeX files.\nThe library comes with an executable that makes most\nfunctionality accessible through a command line interface.\nThe pre-processor formats sequences of uppercase letters\nwith TeX's @\\\\small@ macro or whatever you configure.\nUppercase letters at the beginning of sentences are not\nformatted. Other formatting conditions can be configured by\nthe user.\n\nThe executable can be configured through its command line\narguments as well as through TeX comments. In the default\nconfiguration, lesscase does not change the content of any\nmacro argument or environment (different from document).\nMore and less restrictive configuration profiles can be\nactivated and adapted. Configurations can be stored and\nrestored at any time, even while processing the input\nfile.\n\n[\"Text.SmallCaps\"]\nexports the main program as library.\n\n[\"Text.SmallCaps.Config\"]\nspecifies the default configuration values for\n\"Text.SmallCaps\".\n\n[\"Text.SmallCaps.TeXParser\"]\nparses 'Text' to a 'TeXElement' token stream.\n\n[\"Text.SmallCaps.TeXLaTeXParser\"]\nparses a 'TeXElement' token stream and produces a\n'LaTeXElement' token stream.\n\n[\"Text.SmallCaps.DocumentParser\"]\nreplaces uppercase letters in 'LaTeXElement' token\nstreams.\n\nA simple program can be defined as\n\n@\nimport Data.Default   ( def )\nimport Text.SmallCaps ( smallcaps )\nmain = smallcaps def\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.parsec)
          (hsPkgs.data-default)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "lesscase" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.smallcaps)
          ];
        };
      };
      tests = {
        "texparser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.smallcaps)
          ];
        };
        "texlatexparser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.parsec)
            (hsPkgs.smallcaps)
          ];
        };
        "inputfiles" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.smallcaps)
          ];
        };
        "configparser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.data-default)
            (hsPkgs.smallcaps)
          ];
        };
        "printableparser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.data-default)
            (hsPkgs.smallcaps)
          ];
        };
        "documentparser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.data-default)
            (hsPkgs.smallcaps)
          ];
        };
      };
    };
  }