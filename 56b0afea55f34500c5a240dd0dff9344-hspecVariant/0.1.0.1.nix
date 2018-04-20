{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspecVariant";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Jorge Santiago Alvarez Cuadros";
        maintainer = "sanjorgek@ciencias.unam.mx";
        author = "Jorge Santiago Alvarez Cuadros";
        homepage = "https://github.com/sanjorgek/hspecVariant";
        url = "";
        synopsis = "Spec for testing properties for variant types";
        description = "Spec for testing properties for variant types";
        buildType = "Simple";
      };
      components = {
        hspecVariant = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheckVariant
            hsPkgs.hspec
          ];
        };
      };
    }