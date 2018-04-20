{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "state-codes";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "2017 Agustin Camino";
        maintainer = "agustin.camino@gmail.com";
        author = "Agustin Camino";
        homepage = "https://github.com/acamino/state-codes#README";
        url = "";
        synopsis = "ISO 3166-2:US state codes and i18n names";
        description = "This package provides the ISO 3166-2:US state codes and i18n names";
        buildType = "Simple";
      };
      components = {
        state-codes = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.shakespeare
          ];
        };
        tests = {
          state-codes-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.state-codes
              hsPkgs.text
            ];
          };
        };
      };
    }