{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zlib-lens";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "lens.github.io";
        url = "";
        synopsis = "Lenses for zlib";
        description = "";
        buildType = "Simple";
      };
      components = {
        zlib-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.zlib
          ];
        };
      };
    }