{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = true;
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "riak";
          version = "0.7.2.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright 2011 MailRank, Inc.\nPortions copyright 2007-2010 Basho Technologies, Inc.";
        maintainer = "Mark Hibberd <mark@hibberd.id.au>, Nathan Hunter <nhunter@janrain.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://github.com/markhibberd/riak-haskell-client";
        url = "";
        synopsis = "A Haskell client for the Riak decentralized data store";
        description = "A Haskell client library for the Riak decentralized data\nstore, designed for efficiency, ease of use, and flexibility.  Uses\nthe Riak protocol buffers API for speed.\n\nThis library is organized to allow a tradeoff between power\nand ease of use.  If you would like a different degree of\nautomation with storage and conflict resolution, you may want to\nuse one of the following modules (ranked from easiest to most\ntricky to use):\n\n[Network.Riak] JSON for storage, automatic conflict resolution.\nThis is the easiest module to work with.\n\n[Network.Riak.JSON] JSON for storage, manual conflict resolution.\n\n[Network.Riak.Value.Resolvable] More complex (but still automatic)\nstorage, automatic conflict resolution.\n\n[Network.Riak.Value] More complex (but still automatic) storage,\nmanual conflict resolution.\n\n[Network.Riak.Basic] manual storage, manual conflict resolution.\nThis is the most demanding module to work with, as you must encode\nand decode data yourself, and handle all conflict resolution\nyourself.";
        buildType = "Simple";
      };
      components = {
        "riak" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.monad-control
            hsPkgs.network
            hsPkgs.resource-pool
            hsPkgs.protocol-buffers-fork
            hsPkgs.pureMD5
            hsPkgs.random
            hsPkgs.riak-protobuf
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.riak
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }