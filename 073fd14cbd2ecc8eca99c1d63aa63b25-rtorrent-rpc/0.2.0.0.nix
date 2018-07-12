{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rtorrent-rpc";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "megantti@gmail.com";
        author = "Kai Lindholm";
        homepage = "https://github.com/megantti/rtorrent-rpc";
        url = "";
        synopsis = "A library for communicating with RTorrent over its XML-RPC interface.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "rtorrent-rpc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.haxr
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.attoparsec
            hsPkgs.deepseq
            hsPkgs.split
          ];
        };
      };
    }