{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-postgres"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-postgres";
      url = "";
      synopsis = "A \"PostgreSQL\" driver for the \"hasql\" library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.hasql-backend)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.vector)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.hashtables)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.mmorph)
          (hsPkgs.list-t)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.mtl-prelude)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
          ];
        };
      tests = {
        "library-tests" = {
          depends = [
            (hsPkgs.HTF)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.attoparsec)
            (hsPkgs.hasql)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.vector)
            (hsPkgs.utf8-string)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.hashtables)
            (hsPkgs.Decimal)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.mmorph)
            (hsPkgs.list-t)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
            ];
          };
        "tests" = {
          depends = [
            (hsPkgs.hasql-postgres)
            (hsPkgs.hasql-backend)
            (hsPkgs.hasql)
            (hsPkgs.HTF)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.slave-thread)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.list-t)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
            ];
          };
        };
      benchmarks = {
        "competition" = {
          depends = [
            (hsPkgs.postgresql-simple)
            (hsPkgs.hasql-postgres)
            (hsPkgs.hasql-backend)
            (hsPkgs.hasql)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.criterion-plus)
            (hsPkgs.vector)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.scientific)
            (hsPkgs.list-t)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
            ];
          };
        "profiling" = {
          depends = [
            (hsPkgs.postgresql-simple)
            (hsPkgs.hasql-postgres)
            (hsPkgs.hasql-backend)
            (hsPkgs.hasql)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.vector)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.scientific)
            (hsPkgs.list-t)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
            ];
          };
        };
      };
    }