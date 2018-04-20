{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HueAPI";
          version = "0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@q42.nl";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/HueAPI";
        url = "";
        synopsis = "API for controlling Philips Hue lights";
        description = "API for controlling Philips Hue lights";
        buildType = "Simple";
      };
      components = {
        HueAPI = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.wreq
          ];
        };
      };
    }