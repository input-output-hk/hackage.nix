{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "torrent";
          version = "10000.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2005-2007, Lemmih";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "Lemmih <lemmih@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "BitTorrent file parser and generater";
        description = "";
        buildType = "Simple";
      };
      components = {
        torrent = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bencode
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.syb
          ];
        };
      };
    }