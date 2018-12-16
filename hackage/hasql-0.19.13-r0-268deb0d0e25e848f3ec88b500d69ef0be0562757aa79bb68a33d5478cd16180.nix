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
        version = "0.19.13";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "A very efficient PostgreSQL driver and a flexible mapping API";
      description = "This package is the root of the \\\"hasql\\\" ecosystem.\n\nThe API is completely disinfected from exceptions. All error-reporting is explicit and is presented using the 'Either' type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.postgresql-binary)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.bytestring-tree-builder)
          (hsPkgs.dlist)
          (hsPkgs.aeson)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          (hsPkgs.time)
          (hsPkgs.hashtables)
          (hsPkgs.scientific)
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
            (hsPkgs.rebase)
          ];
        };
        "threads-test" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.rebase)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.criterion)
            (hsPkgs.uuid)
            (hsPkgs.time)
            (hsPkgs.scientific)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.hashable)
            (hsPkgs.dlist)
            (hsPkgs.deepseq)
            (hsPkgs.data-default-class)
            (hsPkgs.profunctors)
            (hsPkgs.contravariant)
            (hsPkgs.contravariant-extras)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
    };
  }