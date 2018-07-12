{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-src-exts-prisms";
          version = "1.18.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Daniel Waterworth";
        maintainer = "da.waterworth@gmail.com";
        author = "Daniel Waterworth";
        homepage = "https://github.com/DanielWaterworth/haskell-src-exts-prisms";
        url = "";
        synopsis = "Prisms with newtype wrappers for haskell-src-exts";
        description = "";
        buildType = "Simple";
      };
      components = {
        "haskell-src-exts-prisms" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.template-haskell
            hsPkgs.lens
          ];
        };
      };
    }