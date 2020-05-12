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
      specVersion = "1.8";
      identifier = { name = "stunclient"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Philipp Balzarek";
      maintainer = "p.balzarek@googlemail.com";
      author = "Philipp Balzarek";
      homepage = "";
      url = "";
      synopsis = "RFC 5389: Session Traversal Utilities for NAT (STUN) client";
      description = "RFC 5389: Session Traversal Utilities for NAT (STUN) client";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."stringprep" or (errorHandler.buildDepError "stringprep"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."cryptohash-cryptoapi" or (errorHandler.buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          ];
        buildable = true;
        };
      tests = {
        "test-serialize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }