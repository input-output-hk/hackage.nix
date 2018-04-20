{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pagarme";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "diogo@biazus.me";
        author = "Diogo Biazus";
        homepage = "https://github.com/diogob/pagarme_haskell";
        url = "";
        synopsis = "Pagarme API wrapper";
        description = "Pagarme API wrapper";
        buildType = "Simple";
      };
      components = {
        pagarme = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.containers
          ];
        };
        exes = {
          testbin = {
            depends  = [
              hsPkgs.base
              hsPkgs.pagarme
              hsPkgs.wreq
              hsPkgs.text
            ];
          };
        };
      };
    }