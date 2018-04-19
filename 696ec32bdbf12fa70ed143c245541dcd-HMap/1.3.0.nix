{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HMap";
          version = "1.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzeus@gmail.com";
        author = "Atze van der Ploeg";
        homepage = "https://github.com/atzeus/HMap";
        url = "";
        synopsis = "Fast heterogeneous maps and unconstrained typeable-like functionality.";
        description = "Fast heterogeneous maps based on Hashmaps and typeable-like functionality for types that are not typeable.";
        buildType = "Simple";
      };
      components = {
        HMap = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.mtl
          ];
        };
      };
    }