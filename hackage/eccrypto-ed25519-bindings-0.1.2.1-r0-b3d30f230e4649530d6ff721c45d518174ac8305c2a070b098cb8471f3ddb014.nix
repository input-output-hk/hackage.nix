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
      identifier = { name = "eccrypto-ed25519-bindings"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné 2020-2025";
      maintainer = "Marcel Fourné (haskell@marcelfourne.de)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "provides \"ed25519\" API using \"eccrypto\"";
      description = "These are bindings providing the functionality of the \"ed25519\" package using a pure Haskell implementation from the \"eccrypto\" package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."eccrypto" or (errorHandler.buildDepError "eccrypto"))
        ];
        buildable = true;
      };
    };
  }