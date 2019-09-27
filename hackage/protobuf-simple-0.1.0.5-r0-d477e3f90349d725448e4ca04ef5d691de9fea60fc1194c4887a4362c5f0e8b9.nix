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
      identifier = { name = "protobuf-simple"; version = "0.1.0.5"; };
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