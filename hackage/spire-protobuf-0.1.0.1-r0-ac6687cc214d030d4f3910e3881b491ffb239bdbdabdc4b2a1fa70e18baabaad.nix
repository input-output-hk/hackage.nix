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
      specVersion = "3.12";
      identifier = { name = "spire-protobuf"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "Minimal Protocol Buffers for Haskell, no codegen";
      description = "A fast, minimal protobuf library with zero-copy decoding and GHC\nGenerics integration. No code generation, no Template Haskell, no\nexternal tools.\n.\nDefine messages as Haskell records with 'Field' wrappers for field\nnumbers, derive 'Generic' and 'ProtoMessage', and get encode/decode\nfor free.\n.\n@\ndata User = User\n  { name  :: Field 1 Text\n  , age   :: Field 2 Int32\n  , email :: Field 3 (Maybe Text)\n  } deriving (Generic, ProtoMessage)\n@\n.\nKey design decisions:\n.\n* Single-pass decoding directly into target type (no intermediate Map)\n* Zero-copy string\\/bytes fields (ByteString slices into input buffer)\n* Length-memoizing Builder for correct submessage encoding\n* GHC 9.10 @-finline-generics@ eliminates Generic overhead\n* 4 dependencies: base, bytestring, text, containers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire-protobuf" or (errorHandler.buildDepError "spire-protobuf"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire-protobuf" or (errorHandler.buildDepError "spire-protobuf"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }