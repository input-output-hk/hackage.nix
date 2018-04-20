{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bson-generic";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "the.palmik+maintainer@gmail.com";
        author = "Petr Pilař";
        homepage = "";
        url = "";
        synopsis = "Generic functionality for BSON";
        description = "This package offers easy conversion from and to BSON data type for most of user defined data types.";
        buildType = "Simple";
      };
      components = {
        bson-generic = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.bson
          ];
        };
      };
    }