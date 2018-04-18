{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uuid-le";
          version = "0.2013.313.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rhymoid@gmail.com";
        author = "Stijn van Drongelen";
        homepage = "";
        url = "";
        synopsis = "Codec for little-endian Universally Unique Identifiers";
        description = "";
        buildType = "Simple";
      };
      components = {
        uuid-le = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.uuid
          ];
        };
      };
    }