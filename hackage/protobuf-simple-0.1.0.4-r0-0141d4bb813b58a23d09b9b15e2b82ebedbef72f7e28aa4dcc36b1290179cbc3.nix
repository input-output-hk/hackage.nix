{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "protobuf-simple"; version = "0.1.0.4"; };
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