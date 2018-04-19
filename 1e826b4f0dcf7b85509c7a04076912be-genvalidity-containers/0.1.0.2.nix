{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-containers";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for containers";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        genvalidity-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.validity-containers
            hsPkgs.genvalidity
            hsPkgs.containers
            hsPkgs.QuickCheck
          ];
        };
      };
    }