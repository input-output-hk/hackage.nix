{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { profile = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "comark-html";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Commonmark (markdown) to HTML renderer.";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
    };
    components = {
      "comark-html" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.comark-syntax)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "comark-html-profile" = {
          depends  = pkgs.lib.optionals (flags.profile) [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.comark-html)
            (hsPkgs.comark-syntax)
            (hsPkgs.comark-testutils)
            (hsPkgs.deepseq)
            (hsPkgs.cmark)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.comark-html)
            (hsPkgs.comark-testutils)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "progit-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.text)
            (hsPkgs.comark-html)
            (hsPkgs.comark-syntax)
            (hsPkgs.comark-testutils)
            (hsPkgs.cmark)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }