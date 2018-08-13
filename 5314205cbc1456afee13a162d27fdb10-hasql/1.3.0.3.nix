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
        name = "hasql";
        version = "1.3.0.3";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "An efficient PostgreSQL driver and a flexible mapping API";
      description = "This package is the root of the \\\"hasql\\\" ecosystem.\n\nThe API is completely disinfected from exceptions. All error-reporting is explicit and is presented using the 'Either' type.\n\nThe version 1 is completely backward-compatible with 0.19.";
      buildType = "Simple";
    };
    components = {
      "hasql" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.postgresql-binary)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.bytestring-strict-builder)
          (hsPkgs.dlist)
          (hsPkgs.vector)
          (hsPkgs.hashtables)
          (hsPkgs.text)
          (hsPkgs.text-builder)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.data-default-class)
          (hsPkgs.profunctors)
          (hsPkgs.contravariant-extras)
          (hsPkgs.contravariant)
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
          depends  = [
            (hsPkgs.hasql)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.data-default-class)
            (hsPkgs.rerebase)
          ];
        };
        "threads-test" = {
          depends  = [
            (hsPkgs.hasql)
            (hsPkgs.rebase)
          ];
        };
        "profiling" = {
          depends  = [
            (hsPkgs.hasql)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.hasql)
            (hsPkgs.criterion)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }