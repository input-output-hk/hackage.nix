{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-transaction";
          version = "0.6";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/hasql-transaction";
        url = "";
        synopsis = "A composable abstraction over the retryable transactions for Hasql";
        description = "";
        buildType = "Simple";
      };
      components = {
        hasql-transaction = {
          depends  = [
            hsPkgs.hasql
            hsPkgs.bytestring-tree-builder
            hsPkgs.bytestring
            hsPkgs.contravariant
            hsPkgs.contravariant-extras
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          conflicts-test = {
            depends  = [
              hsPkgs.hasql-transaction
              hsPkgs.hasql
              hsPkgs.async
              hsPkgs.rebase
            ];
          };
        };
      };
    }