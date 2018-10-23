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
        name = "criterion-plus";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/criterion-plus";
      url = "";
      synopsis = "Enhancement of the \"criterion\" benchmarking library";
      description = "A dome library over \\\"criterion\\\",\nwhich enhances it with the following features:\n\n* Support for partial measuring, e.g., exclusion of the setup/teardown phases.\n\n* Generation of multiple unrelated comparison reports.\n\n* A flexible monadic API,\nwhich allows you to benchmark monad transformers and\ncontrol which parts you actually want measured.\n";
      buildType = "Simple";
    };
    components = {
      "criterion-plus" = {
        depends  = [
          (hsPkgs.optparse-applicative)
          (hsPkgs.criterion)
          (hsPkgs.statistics)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.string-conversions)
          (hsPkgs.th-printf)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.deepseq)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.base)
        ];
      };
      tests = {
        "internal-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.HTF)
            (hsPkgs.optparse-applicative)
            (hsPkgs.criterion)
            (hsPkgs.statistics)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.string-conversions)
            (hsPkgs.th-printf)
            (hsPkgs.monad-control)
            (hsPkgs.transformers-base)
            (hsPkgs.deepseq)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.base)
          ];
        };
      };
    };
  }