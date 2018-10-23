{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "comark-parser";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Parser for Commonmark (markdown)";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
    };
    components = {
      "comark-parser" = {
        depends  = [
          (hsPkgs.text)
          (hsPkgs.comark-syntax)
          (hsPkgs.base)
          (hsPkgs.html5-entity)
          (hsPkgs.control-bool)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.text)
            (hsPkgs.comark-syntax)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.syb)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.comark-parser)
            (hsPkgs.comark-testutils)
            (hsPkgs.cmark)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.text)
            (hsPkgs.comark-syntax)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.comark-testutils)
            (hsPkgs.comark-parser)
            (hsPkgs.deepseq)
            (hsPkgs.file-embed)
          ];
        };
      };
    };
  }