{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "protobuf-simple"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015-2016 Martijn Rijkeboer <mrr@sru-systems.com>";
      maintainer = "Martijn Rijkeboer <mrr@sru-systems.com>";
      author = "Martijn Rijkeboer <mrr@sru-systems.com>";
      homepage = "https://github.com/sru-systems/protobuf-simple";
      url = "";
      synopsis = "Simple Protocol Buffers library (proto2)";
      description = "\n= Protobuf-simple\n\nAn Haskell implementation of Google's Protocol Buffers version 2 with an\nemphasis on simplicity. The implementation consists of a library for\nencoding and decoding of data and the `protoc` executable for generating\nHaskell types from proto files. In fact, the types that are used in the\ntests are generated with the following command:\n\n> \$ protoc data/Types.proto\n\nIn the example below, the `CustomType` is a Haskell type that was generated\nwith the `protoc` executable. The `encCustomType` function encodes a\nCustomType into a ByteString. The `decCustomType` function decodes a\nByteString into either a CustomType or an error.\n\n> module Codec where\n>\n> import Data.ByteString.Lazy (ByteString)\n> import Data.ProtoBuf (decode, encode)\n> import Types.CustomType (CustomType(..))\n>\n> encCustomType :: CustomType -> ByteString\n> encCustomType = encode\n>\n> decCustomType :: ByteString -> Either String CustomType\n> decCustomType = decode\n\nThe library exposes two modules, \"Data.ProtoBuf\", which is used for\nencoding and decoding and \"Data.ProtoBufInt\", which is an internal module\nthat is used by the generated types.\n\n== Supported Data Types\n\nThe following Protocol Buffer types, with their Haskell counterparts, are\nsupported:\n\n* bool: Bool\n* bytes: ByteString (lazy)\n* double: Double\n* enum: Sum-type\n* fixed32: Word32\n* fixed64: Word64\n* float: Float\n* int32: Int32\n* int64: Int64\n* message: Product-type or newtype\n* sfixed32: Int32\n* sfixed64: Int64\n* sint32: Int32\n* sint64: Int64\n* string: Text (lazy)\n* uint32: Word32\n* uint64: Word64\n\n== Compatibility\n\nBesides testing that decoding inverses encoding, the compatibility with\nother implementations is tested by decoding binary files that were created\nwith protobuf-net (C#).\n\n== Other implementations\n\nThere are currently multiple Protocol Buffers implementations available.\nThis library was created for the following reasons. Firstly, I wanted to\nuse Data.Text for the string type instead of Data.ByteString as the\nprotocol-buffers library does. Secondly, I wanted to use newtypes for\nmessages with only one field. Finally, I wanted to use simpler data types\nthan the protobuf library does.\n\nFor example, the protobuf library uses the following (example from the\nmanual):\n\n@\ndata Foo = Foo\n\\ \\ &#123; field1 :: Required 1 (Value Int64)\n\\ \\ , field2 :: Optional 2 (Value Text)\n\\ \\ , field3 :: Repeated 3 (Value Bool)\n\\ \\ &#125; deriving (Generic, Show)\n@\n\nWhereas protobuf-simple would use the following:\n\n@\ndata Foo = Foo\n\\ \\ &#123; field1 :: Int64\n\\ \\ , field2 :: Maybe Text\n\\ \\ , field3 :: Seq Bool\n\\ \\ &#125; deriving (Show, Eq, Ord)\n@\n\n== Not Implemented\n\nThe following Protocol Buffers features are currently not implemented:\n\n* Importing definitions\n* Groups\n* Declaring extensions in messages\n* Declaring nested extensions in messages\n* Oneof feature\n* Associative maps\n* Defining services\n* Custom options";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "protoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "protobuf-simple-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."protobuf-simple" or (errorHandler.buildDepError "protobuf-simple"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }