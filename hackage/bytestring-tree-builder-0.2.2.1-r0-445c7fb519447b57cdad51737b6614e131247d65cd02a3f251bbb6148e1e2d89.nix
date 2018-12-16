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
        name = "bytestring-tree-builder";
        version = "0.2.2.1";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/bytestring-tree-builder";
      url = "";
      synopsis = "A very efficient ByteString builder implementation based on the binary tree";
      description = "According to\n<https://github.com/nikita-volkov/bytestring-builders-benchmark the benchmarks>\nthis builder implementation beats all the alternatives.\nIt is especially well-suited for generating strict bytestrings,\nbeating the standard builder by at least the factor of 4.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.bytestring)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.bytestring-tree-builder)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.base-prelude)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.bytestring-tree-builder)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }