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
        name = "hasql";
        version = "0.19.18.2";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "An efficient PostgreSQL driver and a flexible mapping API";
      description = "This package is the root of the \\\"hasql\\\" ecosystem.\n\nThe API is completely disinfected from exceptions. All error-reporting is explicit and is presented using the 'Either' type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.postgresql-binary)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.bytestring-strict-builder)
          (hsPkgs.dlist)
          (hsPkgs.vector)
          (hsPkgs.hashtables)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.semigroups)
          (hsPkgs.data-default-class)
          (hsPkgs.profunctors)
          (hsPkgs.contravariant-extras)
          (hsPkgs.contravariant)
          (hsPkgs.either)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.data-default-class)
            (hsPkgs.rerebase)
          ];
        };
        "threads-test" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.rebase)
          ];
        };
        "profiling" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.criterion)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }