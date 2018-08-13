{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bytestring-strict-builder";
        version = "0.4.5";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/bytestring-strict-builder";
      url = "";
      synopsis = "An efficient strict bytestring builder";
      description = "According to\n<https://github.com/nikita-volkov/bytestring-builders-benchmark the competition benchmarks>,\nthis library provides on average the fastest builder of strict bytestrings.\n\nPractical benchmarks have proven it to be highly performant as well.\nThe encoders from the \\\"postgresql-binary\\\" library have shown\na stable performance improvement by factors of up to 10 after the migration\nfrom the standard builder to \\\"bytestring-strict-builder\\\".";
      buildType = "Simple";
    };
    components = {
      "bytestring-strict-builder" = {
        depends  = [
          (hsPkgs.semigroups)
          (hsPkgs.bytestring)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.bytestring-strict-builder)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.bytestring-strict-builder)
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }