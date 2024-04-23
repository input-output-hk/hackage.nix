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
      identifier = { name = "crypto-multihash"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Marcello Seri";
      maintainer = "marcello.seri@gmail.com";
      author = "Marcello Seri";
      homepage = "https://github.com/mseri/crypto-multihash#crypto-multihash";
      url = "";
      synopsis = "Multihash library on top of cryptonite crypto library";
      description = "Multihash is a protocol for encoding the hash algorithm\nand digest length at the start of the digest, see the official\n<https://github.com/jbenet/multihash/ multihash github>.\nUsage and additional informations are on README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base58-bytestring" or (errorHandler.buildDepError "base58-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
        ];
        buildable = true;
      };
      exes = {
        "mh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-multihash" or (errorHandler.buildDepError "crypto-multihash"))
          ];
          buildable = true;
        };
      };
      tests = {
        "crypto-multihash-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-multihash" or (errorHandler.buildDepError "crypto-multihash"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }