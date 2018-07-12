{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nbt";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acfoltzer@gmail.com";
        author = "Adam C. Foltzer";
        homepage = "https://github.com/acfoltzer/nbt";
        url = "";
        synopsis = "A parser/serializer for Minecraft's Named Binary Tag (NBT) data format.";
        description = "This package includes a data type for the NBT file format, notably used to represent saved data in Minecraft.";
        buildType = "Simple";
      };
      components = {
        "nbt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.utf8-string
          ];
        };
      };
    }