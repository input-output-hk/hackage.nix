{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validity-aeson";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Validity instances for aeson";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "validity-aeson" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.validity
            hsPkgs.validity-text
            hsPkgs.validity-unordered-containers
            hsPkgs.validity-vector
            hsPkgs.validity-scientific
          ];
        };
      };
    }