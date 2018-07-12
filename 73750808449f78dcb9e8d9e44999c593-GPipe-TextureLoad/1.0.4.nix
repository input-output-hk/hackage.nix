{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "GPipe-TextureLoad";
          version = "1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Tobias Bexelius";
        maintainer = "Tobias Bexelius";
        author = "Tobias Bexelius";
        homepage = "http://www.haskell.org/haskellwiki/GPipe";
        url = "";
        synopsis = "Load GPipe textures from filesystem";
        description = "The functions of this package helps loading GPipe textures from file. It is based on the stb-image package, and supports subsets of the JPG, PNG, TGA, BMP and PSD formats.";
        buildType = "Simple";
      };
      components = {
        "GPipe-TextureLoad" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stb-image
            hsPkgs.GPipe
            hsPkgs.bitmap
          ];
        };
      };
    }