{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "protobuf-simple";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015-2016 Martijn Rijkeboer <mrr@sru-systems.com>";
        maintainer = "Martijn Rijkeboer <mrr@sru-systems.com>";
        author = "Martijn Rijkeboer <mrr@sru-systems.com>";
        homepage = "https://github.com/sru-systems/protobuf-simple";
        url = "";
        synopsis = "Simple Protocol Buffers library (proto2)";
        description = "\nAn Haskell implementation of Google's Protocol Buffers version 2 with an\nemphasis on simplicity. The implementation consists of a library for\nencoding and decoding of data and the `protoc` executable for generating\nHaskell types from proto files. In fact, the types that are used in the\ntests are generated with the following command:\n\n> \$ protoc data/Types.proto\n\nIn the example below, the `CustomType` is a Haskell type that was generated\nwith the `protoc` executable. The `encCustomType` function encodes a\nCustomType into a ByteString. The `decCustomType` function decodes a\nByteString into either a CustomType or an error.\n\n> module Codec where\n>\n> import Data.ByteString.Lazy (ByteString)\n> import Data.ProtoBuf (decode, encode)\n> import Types.CustomType (CustomType(..))\n>\n> encCustomType :: CustomType -> ByteString\n> encCustomType = encode\n>\n> decCustomType :: ByteString -> Either String CustomType\n> decCustomType = decode\n\nThe library exposes two modules, \"Data.ProtoBuf\", which is used for\nencoding and decoding and \"Data.ProtoBufInt\", which is an internal module\nthat is used by the generated types.";
        buildType = "Simple";
      };
      components = {
        protobuf-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
        exes = {
          protoc = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.split
              hsPkgs.text
            ];
          };
        };
        tests = {
          protobuf-simple-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-binary-ieee754
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.parsec
              hsPkgs.protobuf-simple
              hsPkgs.quickcheck-instances
              hsPkgs.split
              hsPkgs.text
            ];
          };
        };
      };
    }