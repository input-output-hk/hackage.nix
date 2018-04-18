{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microgroove";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2018 Dai";
        maintainer = "dailectic@gmail.com";
        author = "Dai";
        homepage = "https://github.com/daig/microgroove#readme";
        url = "";
        synopsis = "Array-backed extensible records";
        description = "Array-backed extensible records, providing fast access and mutation";
        buildType = "Simple";
      };
      components = {
        microgroove = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.vector
          ];
        };
      };
    }