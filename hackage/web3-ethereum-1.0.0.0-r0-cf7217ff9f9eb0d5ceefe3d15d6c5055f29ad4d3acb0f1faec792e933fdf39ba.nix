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
      identifier = { name = "web3-ethereum"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) Aleksandr Krupenkin 2016-2021";
      maintainer = "mail@akru.me";
      author = "Aleksandr Krupenkin";
      homepage = "https://github.com/airalab/hs-web3#readme";
      url = "";
      synopsis = "Ethereum support for Haskell Web3 library.";
      description = "Client library for Third Generation of Web.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."jsonrpc-tinyclient" or (errorHandler.buildDepError "jsonrpc-tinyclient"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."memory-hexstring" or (errorHandler.buildDepError "memory-hexstring"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-aeson" or (errorHandler.buildDepError "microlens-aeson"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."relapse" or (errorHandler.buildDepError "relapse"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."web3-crypto" or (errorHandler.buildDepError "web3-crypto"))
          (hsPkgs."web3-solidity" or (errorHandler.buildDepError "web3-solidity"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."jsonrpc-tinyclient" or (errorHandler.buildDepError "jsonrpc-tinyclient"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."memory-hexstring" or (errorHandler.buildDepError "memory-hexstring"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-aeson" or (errorHandler.buildDepError "microlens-aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."relapse" or (errorHandler.buildDepError "relapse"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."web3-crypto" or (errorHandler.buildDepError "web3-crypto"))
            (hsPkgs."web3-solidity" or (errorHandler.buildDepError "web3-solidity"))
            ];
          buildable = true;
          };
        };
      };
    }