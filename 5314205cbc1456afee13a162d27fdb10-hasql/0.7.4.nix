{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql";
          version = "0.7.4";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/hasql";
        url = "";
        synopsis = "A minimalistic general high level API for relational databases";
        description = "A robust and concise yet powerful API for communication with arbitrary\nrelational databases using SQL.\n\nFeatures:\n\n* Concise and crisp API. Just a few functions and two monads doing all the\nboilerplate job for you.\n\n* A powerful transaction abstraction, which provides\nan automated resolution of conflicts.\nThe API ensures that you're only able to perform a specific\nset of actions in the transaction context,\nwhich allows Hasql to safely resolve conflicting transactions\nby automatically retrying them.\nThis is much inspired by STM and ST.\n\n* Support for cursors. Allows to fetch virtually limitless result sets in a\nconstant memory using streaming.\n\n* Employment of prepared statements.\nEvery statement you emit gets prepared and cached.\nThis raises the performance of the backend.\n\n* Automated management of resources related to connections, transactions and\ncursors.\n\n* A built-in connection pool.\n\n* Compile-time generation of templates. You just can't write a statement with an\nincorrect number of placeholders.\n\n* Ability to map to any types actually supported by the backend.\n\nLinks:\n\n* <http://nikita-volkov.github.io/hasql-benchmarks/ Benchmarks analysis>.\n\n* <https://github.com/nikita-volkov/hasql/blob/master/demo/Main.hs Basic tutorial-demo>.\n\n* <http://hackage.haskell.org/package/hasql-postgres PostgreSQL backend>.\n";
        buildType = "Simple";
      };
      components = {
        "hasql" = {
          depends  = [
            hsPkgs.resource-pool
            hsPkgs.hasql-backend
            hsPkgs.template-haskell
            hsPkgs.attoparsec
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.either
            hsPkgs.list-t
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.transformers-base
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.hasql
              hsPkgs.hasql-backend
              hsPkgs.hspec
              hsPkgs.vector
              hsPkgs.mtl-prelude
              hsPkgs.base-prelude
            ];
          };
          "hspec-postgres" = {
            depends  = [
              hsPkgs.hasql
              hsPkgs.hasql-postgres
              hsPkgs.slave-thread
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.monad-control
              hsPkgs.either
              hsPkgs.mtl-prelude
              hsPkgs.base-prelude
            ];
          };
        };
        benchmarks = {
          "demo" = {
            depends  = [
              hsPkgs.hasql
              hsPkgs.hasql-postgres
              hsPkgs.transformers
              hsPkgs.base
            ];
          };
        };
      };
    }