{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "blazeMarker";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "raphaelsimeon@gmail.com";
        author = "Raphaël Mongeau";
        homepage = "";
        url = "";
        synopsis = "...";
        description = "";
        buildType = "Simple";
      };
      components = {
        blazeMarker = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
          ];
        };
      };
    }