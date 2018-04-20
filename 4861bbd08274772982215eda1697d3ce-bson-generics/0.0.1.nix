{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bson-generics";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "the.palmik+maintainer@gmail.com";
        author = "Petr Pilař";
        homepage = "";
        url = "";
        synopsis = "Generics functionality for BSON";
        description = "This package offers easy conversion from and to BSON data type for most of user defined data types.";
        buildType = "Simple";
      };
      components = {
        bson-generics = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.bson
          ];
        };
      };
    }