{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validity-uuid";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Validity instances for uuid";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "validity-uuid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.uuid
            hsPkgs.validity
          ];
        };
      };
    }