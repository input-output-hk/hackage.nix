{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "typehash";
          version = "1.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Create a unique hash value for a type.";
        description = "Produce a hash for a type that is unique for that type.\nThe hash takes both actual type names and type structure into account.\nThis is useful for checking the type of persisted values.";
        buildType = "Simple";
      };
      components = {
        "typehash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.pureMD5
            hsPkgs.binary
          ];
        };
      };
    }