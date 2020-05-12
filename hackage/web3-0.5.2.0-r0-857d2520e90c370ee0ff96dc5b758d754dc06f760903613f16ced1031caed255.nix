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
      identifier = { name = "web3"; version = "0.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Alexander Krupenkin";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/airalab/hs-web3#readme";
      url = "";
      synopsis = "Ethereum API for Haskell";
      description = "Web3 is a Haskell client library for Ethereum";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "web3-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."web3" or (errorHandler.buildDepError "web3"))
            ];
          buildable = true;
          };
        };
      };
    }