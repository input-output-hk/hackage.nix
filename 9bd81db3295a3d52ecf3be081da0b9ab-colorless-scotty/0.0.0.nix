{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "colorless-scotty";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Scotty server add-on for Colorless";
        description = "Scotty server add-on for Colorless";
        buildType = "Simple";
      };
      components = {
        colorless-scotty = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.colorless
            hsPkgs.scotty
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.wai
          ];
        };
      };
    }