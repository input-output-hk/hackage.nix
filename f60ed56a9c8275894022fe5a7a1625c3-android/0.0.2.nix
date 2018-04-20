{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "android";
          version = "0.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez, Keera Studios Ltd";
        homepage = "https://github.com/keera-studios/android-haskell";
        url = "";
        synopsis = "Android methods exposed to Haskell";
        description = "Haskell bindings to the Android ecosystem";
        buildType = "Simple";
      };
      components = {
        android = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ];
        };
      };
    }