{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conversion";
          version = "1.2";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/conversion";
        url = "";
        synopsis = "Universal converter between values of different types";
        description = "";
        buildType = "Simple";
      };
      components = {
        conversion = {
          depends  = [
            hsPkgs.base-prelude
          ];
        };
      };
    }