{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validity-time";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Validity instances for time";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        validity-time = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.time
          ];
        };
      };
    }