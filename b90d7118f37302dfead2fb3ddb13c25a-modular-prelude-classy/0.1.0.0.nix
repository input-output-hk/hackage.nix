{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "modular-prelude-classy";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "https://github.com/DanBurton/modular-prelude#readme";
        url = "";
        synopsis = "Reifying ClassyPrelude a la ModularPrelude";
        description = "";
        buildType = "Simple";
      };
      components = {
        modular-prelude-classy = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.modular-prelude
          ];
        };
      };
    }