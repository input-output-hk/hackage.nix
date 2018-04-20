{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "histogram-fill-cereal";
          version = "0.8.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Alexey Khudyakov";
        homepage = "https://github.com/Shimuuar/histogram-fill/";
        url = "";
        synopsis = "Binary instances for histogram-fill package";
        description = "Cereal instances for histogram-fill package";
        buildType = "Simple";
      };
      components = {
        histogram-fill-cereal = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.vector
            hsPkgs.histogram-fill
          ];
        };
      };
    }