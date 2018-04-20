{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validity-path";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Validity instances for Path";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        validity-path = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.path
            hsPkgs.filepath
          ];
        };
      };
    }