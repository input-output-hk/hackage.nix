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
        name = "text-builder";
        version = "0.4";
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
      "text-builder" = {
        depends  = [
          (hsPkgs.semigroups)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.text-builder)
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
        "text-benchmark" = {
          depends  = [
            (hsPkgs.text-builder)
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
          ];
        };
        "char-benchmark" = {
          depends  = [
            (hsPkgs.text-builder)
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }