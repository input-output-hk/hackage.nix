{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "thumbnail";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cutsea110@gmail.com";
        author = "Katsutoshi Itoh";
        homepage = "https://github.com/cutsea110/thumbnail";
        url = "";
        synopsis = "generate thumbnail image";
        description = "generate thumbnail image";
        buildType = "Simple";
      };
      components = {
        "thumbnail" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gd
            hsPkgs.bytestring
          ];
        };
      };
    }