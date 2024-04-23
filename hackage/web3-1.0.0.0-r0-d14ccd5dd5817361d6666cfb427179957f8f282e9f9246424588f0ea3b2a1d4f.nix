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
      identifier = { name = "web3"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) Aleksandr Krupenkin 2016-2021";
      maintainer = "mail@akru.me";
      author = "Aleksandr Krupenkin";
      homepage = "https://github.com/airalab/hs-web3#readme";
      url = "";
      synopsis = "Haskell Web3 library.";
      description = "Client library for Third Generation of Web.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."web3-ethereum" or (errorHandler.buildDepError "web3-ethereum"))
          (hsPkgs."web3-polkadot" or (errorHandler.buildDepError "web3-polkadot"))
          (hsPkgs."web3-provider" or (errorHandler.buildDepError "web3-provider"))
        ];
        buildable = true;
      };
    };
  }