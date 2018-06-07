{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "deferred-folds";
          version = "0.4";
        };
        license = "MIT";
        copyright = "(c) 2018, Metrix.AI";
        maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/metrix-ai/deferred-folds";
        url = "";
        synopsis = "Abstractions over deferred folds";
        description = "";
        buildType = "Simple";
      };
      components = {
        deferred-folds = {
          depends  = [
            hsPkgs.base
            hsPkgs.foldl
          ];
        };
      };
    }