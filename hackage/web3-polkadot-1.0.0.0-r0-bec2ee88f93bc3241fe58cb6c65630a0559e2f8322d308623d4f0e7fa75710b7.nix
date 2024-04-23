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
      specVersion = "1.12";
      identifier = { name = "web3-polkadot"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) Aleksandr Krupenkin 2016-2021";
      maintainer = "mail@akru.me";
      author = "Aleksandr Krupenkin";
      homepage = "https://github.com/airalab/hs-web3#readme";
      url = "";
      synopsis = "Polkadot support for Haskell Web3 library.";
      description = "Client library for Third Generation of Web.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."animalcase" or (errorHandler.buildDepError "animalcase"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base58-bytestring" or (errorHandler.buildDepError "base58-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."jsonrpc-tinyclient" or (errorHandler.buildDepError "jsonrpc-tinyclient"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."memory-hexstring" or (errorHandler.buildDepError "memory-hexstring"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."scale" or (errorHandler.buildDepError "scale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."web3-bignum" or (errorHandler.buildDepError "web3-bignum"))
          (hsPkgs."web3-crypto" or (errorHandler.buildDepError "web3-crypto"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."animalcase" or (errorHandler.buildDepError "animalcase"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base58-bytestring" or (errorHandler.buildDepError "base58-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."hspec-expectations-json" or (errorHandler.buildDepError "hspec-expectations-json"))
            (hsPkgs."jsonrpc-tinyclient" or (errorHandler.buildDepError "jsonrpc-tinyclient"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."memory-hexstring" or (errorHandler.buildDepError "memory-hexstring"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."scale" or (errorHandler.buildDepError "scale"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."web3-bignum" or (errorHandler.buildDepError "web3-bignum"))
            (hsPkgs."web3-crypto" or (errorHandler.buildDepError "web3-crypto"))
          ];
          buildable = true;
        };
      };
    };
  }