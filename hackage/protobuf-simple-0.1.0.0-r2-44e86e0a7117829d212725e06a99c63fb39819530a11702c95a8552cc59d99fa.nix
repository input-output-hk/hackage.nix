let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "\n__Protobuf-simple__\n\nAn Haskell implementation of Google's Protocol Buffers version 2 with an\nemphasis on simplicity. The implementation consists of a library for\nencoding and decoding of data and the `protoc` executable for generating\nHaskell types from proto files. In fact, the types that are used in the\ntests are generated with the following command:\n\n> \$ protoc data/Types.proto\n\nIn the example below, the `CustomType` is a Haskell type that was generated\nwith the `protoc` executable. The `encCustomType` function encodes a\nCustomType into a ByteString. The `decCustomType` function decodes a\nByteString into either a CustomType or an error.\n\n> module Codec where\n>\n> import Data.ByteString.Lazy (ByteString)\n> import Data.ProtoBuf (decode, encode)\n> import Types.CustomType (CustomType(..))\n>\n> encCustomType :: CustomType -> ByteString\n> encCustomType = encode\n>\n> decCustomType :: ByteString -> Either String CustomType\n> decCustomType = decode\n\nThe library exposes two modules, \"Data.ProtoBuf\", which is used for\nencoding and decoding and \"Data.ProtoBufInt\", which is an internal module\nthat is used by the generated types.\n\n\n__Supported Data Types__\n\nThe following Protocol Buffer types, with their Haskell counterparts, are\nsupported:\n\n* bool: Bool\n\n* bytes: ByteString (lazy)\n\n* double: Double\n\n* enum: Sum-type\n\n* fixed32: Word32\n\n* fixed64: Word64\n\n* float: Float\n\n* int32: Int32\n\n* int64: Int64\n\n* message: Product-type or newtype\n\n* sfixed32: Int32\n\n* sfixed64: Int64\n\n* sint32: Int32\n\n* sint64: Int64\n\n* string: Text (lazy)\n\n* uint32: Word32\n\n* uint64: Word64\n\n\n__Compatibility__\n\nBesides testing that decoding inverses encoding, the compatibility with\nother implementations is tested by decoding binary files that were created\nwith protobuf-net (C#).\n\n\n__Other implementations__\n\nThere are currently multiple Protocol Buffers implementations available.\nThis library was created for the following reasons. Firstly, I wanted to\nuse Data.Text for the string type instead of Data.ByteString as the\nprotocol-buffers library does. Secondly, I wanted to use newtypes for\nmessages with only one field. Finally, I wanted to use simpler data types\nthan the protobuf library does.\n\nFor example, the protobuf library uses the following (example from the\nmanual):\n\n@\ndata Foo = Foo\n\\ \\ &#123; field1 :: Required 1 (Value Int64)\n\\ \\ , field2 :: Optional 2 (Value Text)\n\\ \\ , field3 :: Repeated 3 (Value Bool)\n\\ \\ &#125; deriving (Generic, Show)\n@\n\nWhereas protobuf-simple would use the following:\n\n@\ndata Foo = Foo\n\\ \\ &#123; field1 :: Int64\n\\ \\ , field2 :: Maybe Text\n\\ \\ , field3 :: Seq Bool\n\\ \\ &#125; deriving (Show, Eq, Ord)\n@\n\n\n__Not Implemented__\n\nThe following Protocol Buffers features are currently not implemented:\n\n* Importing definitions\n\n* Groups\n\n* Declaring extensions in messages\n\n* Declaring nested extensions in messages\n\n* Oneof feature\n\n* Associative maps\n\n* Defining services\n\n* Custom options";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "protoc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "protobuf-simple-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."protobuf-simple" or (buildDepError "protobuf-simple"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }