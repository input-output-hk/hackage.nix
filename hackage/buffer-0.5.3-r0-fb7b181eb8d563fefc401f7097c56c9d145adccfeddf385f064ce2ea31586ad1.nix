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
        name = "buffer";
        version = "0.5.3";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/buffer";
      url = "";
      synopsis = "Simple mutable low-level buffer for IO";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.bytestring)
          (hsPkgs.bug)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.buffer)
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
          depends = [
            (hsPkgs.buffer)
            (hsPkgs.criterion)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }