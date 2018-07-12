{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validity-vector";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Validity instances for vector";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "validity-vector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.validity
            hsPkgs.vector
          ];
        };
      };
    }