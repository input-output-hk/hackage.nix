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
    flags = { integration = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "solana-haskell-sdk"; version = "1.2.0.0"; };
      license = "Apache-2.0";
      copyright = "2024 Marius Georgescu";
      maintainer = "georgescumarius@live.com";
      author = "Marius Georgescu";
      homepage = "https://github.com/mariusgeorgescu/solana-haskell-sdk";
      url = "";
      synopsis = "Solana SDK: transaction building, signing, program clients, and JSON-RPC.";
      description = "This library includes features like key generation and management,\ntransaction and instruction construction, and a JSON-RPC API client.\n\nThis library is aimed at developers building Solana dApps, tools, or infrastructure in Haskell.\n\nAll serialization is verified byte-for-byte against the official Rust SDK by golden-vector tests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base58-bytestring" or (errorHandler.buildDepError "base58-bytestring"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."ed25519" or (errorHandler.buildDepError "ed25519"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."jsonrpc-tinyclient" or (errorHandler.buildDepError "jsonrpc-tinyclient"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."web3" or (errorHandler.buildDepError "web3"))
        ];
        buildable = true;
      };
      exes = {
        "solana-haskell-sdk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."solana-haskell-sdk" or (errorHandler.buildDepError "solana-haskell-sdk"))
            (hsPkgs."web3-provider" or (errorHandler.buildDepError "web3-provider"))
          ];
          buildable = true;
        };
      };
      tests = {
        "solana-haskell-sdk-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."solana-haskell-sdk" or (errorHandler.buildDepError "solana-haskell-sdk"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "integration-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."solana-haskell-sdk" or (errorHandler.buildDepError "solana-haskell-sdk"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."web3-provider" or (errorHandler.buildDepError "web3-provider"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
          buildable = if !flags.integration then false else true;
        };
      };
    };
  }