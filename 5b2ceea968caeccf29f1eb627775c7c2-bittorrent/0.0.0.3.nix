{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bittorrent";
          version = "0.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013, Sam Truzjan";
        maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
        author = "Sam Truzjan";
        homepage = "https://github.com/cobit/bittorrent";
        url = "";
        synopsis = "Bittorrent protocol implementation.";
        description = "A library for making Haskell bittorrent applications easy.\n\nFor more information see:\n<https://github.com/cobit/bittorrent/blob/master/README.md>";
        buildType = "Simple";
      };
      components = {
        "bittorrent" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bits-extras
            hsPkgs.pretty
            hsPkgs.pretty-class
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.transformers
            hsPkgs.SafeSemaphore
            hsPkgs.BoundedChan
            hsPkgs.stm
            hsPkgs.conduit
            hsPkgs.network-conduit
            hsPkgs.cereal-conduit
            hsPkgs.binary-conduit
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.IntervalMap
            hsPkgs.intset
            hsPkgs.split
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.cryptohash
            hsPkgs.hashable
            hsPkgs.aeson
            hsPkgs.base16-bytestring
            hsPkgs.base32-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.bencoding
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.urlencoded
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.krpc
            hsPkgs.directory
            hsPkgs.entropy
            hsPkgs.filepath
            hsPkgs.mmap
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.aeson
              hsPkgs.cereal
              hsPkgs.network
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.bencoding
              hsPkgs.bittorrent
            ];
          };
        };
      };
    }