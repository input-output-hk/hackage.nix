{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "awesome-prelude";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2016, Koz Ross; 2014, Nikita Volkov";
        maintainer = "Koz Ross <koz.ross@retro-freedom.nz>";
        author = "Koz Ross <koz.ross@retro-freedom.nz>,\nNikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://notabug.org/koz.ross/awesome-prelude";
        url = "";
        synopsis = "A prelude which I can be happy with. Based on base-prelude.";
        description = "A prelude designed to be as type-generic as possible in\nevery way. A work in progress.";
        buildType = "Simple";
      };
      components = {
        "awesome-prelude" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }