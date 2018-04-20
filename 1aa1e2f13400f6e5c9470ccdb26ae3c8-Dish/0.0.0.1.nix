{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Dish";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oss@crlog.info";
        author = "Courtney Robinson";
        homepage = "http://github.com/zcourts/Dish";
        url = "";
        synopsis = "Hash modules (currently Murmur3)";
        description = "A group of Hash related utilities (currently wraps MurmurHash3 C implementation)";
        buildType = "Simple";
      };
      components = {
        Dish = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }