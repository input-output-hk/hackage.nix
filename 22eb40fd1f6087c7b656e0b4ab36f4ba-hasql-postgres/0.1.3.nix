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
        name = "hasql-postgres";
        version = "0.1.3";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-postgres";
      url = "";
      synopsis = "A \"PostgreSQL\" backend for the \"hasql\" library";
      description = "This library provides a \\\"PostgreSQL\\\" driver for\n<http://hackage.haskell.org/package/hasql the \"hasql\" library>.";
      buildType = "Simple";
    };
    components = {
      "hasql-postgres" = {
        depends  = [
          (hsPkgs.template-haskell)
          (hsPkgs.attoparsec)
          (hsPkgs.hasql-backend)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.base16-bytestring)
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
          depends  = [
            (hsPkgs.HTF)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.template-haskell)
            (hsPkgs.attoparsec)
            (hsPkgs.hasql)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.base16-bytestring)
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
          depends  = [
            (hsPkgs.hasql-postgres)
            (hsPkgs.hasql-backend)
            (hsPkgs.hasql)
            (hsPkgs.HTF)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.slave-thread)
            (hsPkgs.vector)
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
          depends  = [
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
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
            (hsPkgs.monad-control)
            (hsPkgs.deepseq)
            (hsPkgs.list-t)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
        "profiling" = {
          depends  = [
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