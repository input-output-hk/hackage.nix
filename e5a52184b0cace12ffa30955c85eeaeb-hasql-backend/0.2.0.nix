{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-backend";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/hasql-backend";
        url = "";
        synopsis = "API for backends of \"hasql\"";
        description = "An API for implementation of backends for the\n<http://hackage.haskell.org/package/hasql \"hasql\">\nlibrary.";
        buildType = "Simple";
      };
      components = {
        hasql-backend = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.list-t
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }