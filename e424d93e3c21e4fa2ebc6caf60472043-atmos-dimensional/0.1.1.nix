{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "atmos-dimensional";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "dimensional wrapper on atmos package";
        description = "1976 US Standard Atmosphere with dimensions from dimensional package.\n\nThis is a thin wrapper on top of the atmos package.";
        buildType = "Simple";
      };
      components = {
        "atmos-dimensional" = {
          depends  = [
            hsPkgs.base
            hsPkgs.atmos
            hsPkgs.dimensional
          ];
        };
      };
    }