{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-pool";
          version = "0.4.3.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/hasql-pool";
        url = "";
        synopsis = "A pool of connections for Hasql";
        description = "";
        buildType = "Simple";
      };
      components = {
        hasql-pool = {
          depends  = [
            hsPkgs.resource-pool
            hsPkgs.hasql
            hsPkgs.time
            hsPkgs.base-prelude
          ];
        };
      };
    }