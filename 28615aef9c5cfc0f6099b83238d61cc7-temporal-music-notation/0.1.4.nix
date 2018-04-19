{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "temporal-music-notation";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "";
        url = "";
        synopsis = "music notation";
        description = "Library for expressing musical ideas. Includes composable score representation, microsound tunings, flexible pitch and volume control.";
        buildType = "Simple";
      };
      components = {
        temporal-music-notation = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.temporal-media
          ];
        };
      };
    }