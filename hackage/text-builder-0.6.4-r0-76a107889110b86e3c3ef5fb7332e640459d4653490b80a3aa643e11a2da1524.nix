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
        name = "text-builder";
        version = "0.6.4";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/text-builder";
      url = "";
      synopsis = "An efficient strict text builder";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.deferred-folds)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text-builder)
          ];
        };
      };
      benchmarks = {
        "benchmark-text" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
            (hsPkgs.text-builder)
          ];
        };
        "benchmark-char" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
            (hsPkgs.text-builder)
          ];
        };
      };
    };
  }