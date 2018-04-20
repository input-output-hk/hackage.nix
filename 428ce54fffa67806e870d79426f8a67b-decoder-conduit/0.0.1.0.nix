{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "decoder-conduit";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hanooter@gmail.com";
        author = "Kyle Hanson";
        homepage = "https://github.com/hansonkd/decoder-conduit";
        url = "";
        synopsis = "Conduit for decoding ByteStrings using Data.Binary.Get";
        description = "Simple conduit for decoding ByteStrings into values using Data.Binary.Get";
        buildType = "Simple";
      };
      components = {
        decoder-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.conduit
          ];
        };
      };
    }