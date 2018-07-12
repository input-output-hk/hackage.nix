{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-cursor-query";
          version = "0.4.1";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/hasql-cursor-query";
        url = "";
        synopsis = "A declarative abstraction over PostgreSQL Cursor";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hasql-cursor-query" = {
          depends  = [
            hsPkgs.hasql
            hsPkgs.hasql-transaction
            hsPkgs.hasql-cursor-transaction
            hsPkgs.bytestring
            hsPkgs.foldl
            hsPkgs.profunctors
            hsPkgs.contravariant
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          "tasty" = {
            depends  = [
              hsPkgs.hasql
              hsPkgs.hasql-cursor-query
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-hunit
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.foldl
              hsPkgs.rebase
            ];
          };
        };
      };
    }