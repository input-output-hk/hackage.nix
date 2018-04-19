{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-iproute";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lanablack@amok.cc";
        author = "Lana Black";
        homepage = "https://github.com/greydot/aeson-iproute";
        url = "";
        synopsis = "Aeson instances for iproute types";
        description = "";
        buildType = "Simple";
      };
      components = {
        aeson-iproute = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.iproute
            hsPkgs.text
          ];
        };
      };
    }