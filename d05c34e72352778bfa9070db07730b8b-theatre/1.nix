{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "theatre";
          version = "1";
        };
        license = "MIT";
        copyright = "(c) 2017, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/theatre";
        url = "";
        synopsis = "Minimalistic actor library";
        description = "";
        buildType = "Simple";
      };
      components = {
        theatre = {
          depends  = [
            hsPkgs.unagi-chan
            hsPkgs.slave-thread
            hsPkgs.contravariant
            hsPkgs.semigroups
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }