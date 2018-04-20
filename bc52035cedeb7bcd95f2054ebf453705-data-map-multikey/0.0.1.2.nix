{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-map-multikey";
          version = "0.0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jhickner@gmail.com";
        author = "Jason Hickner";
        homepage = "http://github.com/jhickner/data-map-multikey";
        url = "";
        synopsis = "Data.Map with multiple, unique keys";
        description = "Data.Map with multiple, unique keys. IxSet without the Sets.";
        buildType = "Simple";
      };
      components = {
        data-map-multikey = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }