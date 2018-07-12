{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pack";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) capsjac 2015";
        maintainer = "capsjac <capsjac at gmail dot com>";
        author = "capsjac <capsjac at gmail dot com>";
        homepage = "https://github.com/capsjac/pack";
        url = "";
        synopsis = "Bidirectional fast ByteString packer/unpacker";
        description = "Serializer and deserializer are unified in this way.\nThis package is suitable for parsing small data packets\nand binary blobs.";
        buildType = "Simple";
      };
      components = {
        "pack" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.lens
            hsPkgs.vector
          ];
        };
      };
    }