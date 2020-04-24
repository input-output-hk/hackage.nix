{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "\n= Protobuf-simple\n\nAn Haskell implementation of Google's Protocol Buffers version 2 with an\nemphasis on simplicity. The implementation consists of a library for\nencoding and decoding of data and the `protoc` executable for generating\nHaskell types from proto files. In fact, the types that are used in the\ntests are generated with the following command:\n\n> \$ protoc data/Types.proto\n\nIn the example below, the `CustomType` is a Haskell type that was generated\nwith the `protoc` executable. The `encCustomType` function encodes a\nCustomType into a ByteString. The `decCustomType` function decodes a\nByteString into either a CustomType or an error.\n\n> module Codec where\n>\n> import Data.ByteString.Lazy (ByteString)\n> import Data.ProtoBuf (decode, encode)\n> import Types.CustomType (CustomType(..))\n>\n> encCustomType :: CustomType -> ByteString\n> encCustomType = encode\n>\n> decCustomType :: ByteString -> Either String CustomType\n> decCustomType = decode\n\nThe library exposes two modules, \"Data.ProtoBuf\", which is used for\nencoding and decoding and \"Data.ProtoBufInt\", which is an internal module\nthat is used by the generated types.\n\n\n== Supported Data Types\n\nThe following Protocol Buffer types, with their Haskell counterparts, are\nsupported:\n\n* bool: Bool\n\n* bytes: ByteString (lazy)\n\n* double: Double\n\n* enum: Sum-type\n\n* fixed32: Word32\n\n* fixed64: Word64\n\n* float: Float\n\n* int32: Int32\n\n* int64: Int64\n\n* message: Product-type or newtype\n\n* sfixed32: Int32\n\n* sfixed64: Int64\n\n* sint32: Int32\n\n* sint64: Int64\n\n* string: Text (lazy)\n\n* uint32: Word32\n\n* uint64: Word64\n\n\n== Compatibility\n\nBesides testing that decoding inverses encoding, the compatibility with\nother implementations is tested by decoding binary files that were created\nwith protobuf-net (C#).\n\n\n== Other implementations\n\nThere are currently multiple Protocol Buffers implementations available.\nThis library was created for the following reasons. Firstly, I wanted to\nuse Data.Text for the string type instead of Data.ByteString as the\nprotocol-buffers library does. Secondly, I wanted to use newtypes for\nmessages with only one field. Finally, I wanted to use simpler data types\nthan the protobuf library does.\n\nFor example, the protobuf library uses the following (example from the\nmanual):\n\n@\ndata Foo = Foo\n\\ \\ &#123; field1 :: Required 1 (Value Int64)\n\\ \\ , field2 :: Optional 2 (Value Text)\n\\ \\ , field3 :: Repeated 3 (Value Bool)\n\\ \\ &#125; deriving (Generic, Show)\n@\n\nWhereas protobuf-simple would use the following:\n\n@\ndata Foo = Foo\n\\ \\ &#123; field1 :: Int64\n\\ \\ , field2 :: Maybe Text\n\\ \\ , field3 :: Seq Bool\n\\ \\ &#125; deriving (Show, Eq, Ord)\n@\n\n\n== Not Implemented\n\nThe following Protocol Buffers features are currently not implemented:\n\n* Importing definitions\n\n* Groups\n\n* Declaring extensions in messages\n\n* Declaring nested extensions in messages\n\n* Oneof feature\n\n* Associative maps\n\n* Defining services\n\n* Custom options";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "protoc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "protobuf-simple-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."protobuf-simple" or ((hsPkgs.pkgs-errors).buildDepError "protobuf-simple"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }