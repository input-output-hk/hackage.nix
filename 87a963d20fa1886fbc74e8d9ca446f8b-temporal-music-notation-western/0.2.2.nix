{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "temporal-music-notation-western";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "https://github.com/anton-k/temporal-music-notation-western";
        url = "";
        synopsis = "western music notation";
        description = "Localization of 'temporal-music-notation' library for\nWestern music tradition.";
        buildType = "Simple";
      };
      components = {
        temporal-music-notation-western = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.temporal-music-notation
          ];
        };
      };
    }