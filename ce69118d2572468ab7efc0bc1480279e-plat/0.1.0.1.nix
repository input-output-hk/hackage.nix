{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "plat";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "miguelimo38@yandex.ru";
        author = "Miguel Mitrofanov";
        homepage = "";
        url = "";
        synopsis = "Simple templating library";
        description = "The long-standing cabal bug wouldn't let me to\ngive a nice description here; see \"Plat\" module.";
        buildType = "Simple";
      };
      components = {
        plat = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.containers
          ];
        };
      };
    }