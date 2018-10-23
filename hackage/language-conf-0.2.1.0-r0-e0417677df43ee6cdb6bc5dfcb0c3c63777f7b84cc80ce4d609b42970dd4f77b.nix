{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      conffmt = false;
      fromconf = false;
      toconf = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "language-conf";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2016 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/beijaflor-io/haskell-language-conf#readme";
      url = "";
      synopsis = "Conf parsers and pretty-printers for the Haskell programming language.";
      description = "@language-conf@ contains @.conf@ (e.g. nginx configuration) parsers and pretty-printers for the Haskell programming language.\n\"Data.Conf\" exports all the API surface in the package.\n\"ConfFmt\" is a @.conf@ file formatter that serves as an example; it's built as @conffmt@ by the cabal configuration. You can see its' source-code <https://github.com/beijaflor-io/language-hcl/src/ConfFmt.hs here>";
      buildType = "Simple";
    };
    components = {
      "language-conf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.megaparsec)
          (hsPkgs.pretty)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.aeson)
        ];
      };
      exes = {
        "conffmt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.megaparsec)
            (hsPkgs.language-conf)
            (hsPkgs.pretty)
          ];
        };
        "fromconf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-conf)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.megaparsec)
            (hsPkgs.filepath)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
          ];
        };
        "toconf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-conf)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.megaparsec)
            (hsPkgs.filepath)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.language-conf)
            (hsPkgs.megaparsec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.pretty)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }