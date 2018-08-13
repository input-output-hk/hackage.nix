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
        name = "concurrent-buffer";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/concurrent-buffer";
      url = "";
      synopsis = "Concurrent expanding buffer";
      description = "";
      buildType = "Simple";
    };
    components = {
      "concurrent-buffer" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.bug)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.concurrent-buffer)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.concurrent-buffer)
            (hsPkgs.criterion)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }