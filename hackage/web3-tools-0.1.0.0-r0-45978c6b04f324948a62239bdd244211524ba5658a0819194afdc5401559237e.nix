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
      identifier = { name = "web3-tools"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2025 Gabriel Tollini";
      maintainer = "gabrieltollini@hotmail.com";
      author = "Gabriel Tollini";
      homepage = "https://github.com/gtollini/web3-tools#readme";
      url = "";
      synopsis = "Tools for working with Crypto/Web3";
      description = "Please see the README on GitHub at <https://github.com/gtollini/web3-tools#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."secp256k1-haskell" or (errorHandler.buildDepError "secp256k1-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "web3-tools-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."secp256k1-haskell" or (errorHandler.buildDepError "secp256k1-haskell"))
            (hsPkgs."web3-tools" or (errorHandler.buildDepError "web3-tools"))
          ];
          buildable = true;
        };
      };
    };
  }