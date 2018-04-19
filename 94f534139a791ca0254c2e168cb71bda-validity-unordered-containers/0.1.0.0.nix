{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validity-unordered-containers";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Validity instances for unordered-containers";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        validity-unordered-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.unordered-containers
            hsPkgs.hashable
          ];
        };
      };
    }