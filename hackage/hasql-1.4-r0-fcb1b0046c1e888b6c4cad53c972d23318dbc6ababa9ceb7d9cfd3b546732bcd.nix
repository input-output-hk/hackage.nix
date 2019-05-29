{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql"; version = "1.4"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "An efficient PostgreSQL driver with a flexible mapping API";
      description = "This package is the root of the \\\"hasql\\\" ecosystem.\n\nThe API comes free from all kinds of exceptions. All error-reporting is explicit and is presented using the 'Either' type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-strict-builder)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.dlist)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.loch-th)
          (hsPkgs.mtl)
          (hsPkgs.placeholders)
          (hsPkgs.postgresql-binary)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.profunctors)
          (hsPkgs.text)
          (hsPkgs.text-builder)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        "threads-test" = { depends = [ (hsPkgs.hasql) (hsPkgs.rebase) ]; };
        "profiling" = {
          depends = [ (hsPkgs.bug) (hsPkgs.hasql) (hsPkgs.rerebase) ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.bug)
            (hsPkgs.criterion)
            (hsPkgs.hasql)
            (hsPkgs.rerebase)
            ];
          };
        };
      };
    }