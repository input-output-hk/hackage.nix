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
      identifier = { name = "ethereum-merkle-patricia-db"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamshidnh@gmail.com";
      author = "Jamshid";
      homepage = "";
      url = "";
      synopsis = "A modified Merkle Patricia DB";
      description = "The modified Merkle Patricia DB described in the Ethereum Yellowpaper";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."nibblestring" or (errorHandler.buildDepError "nibblestring"))
          (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
          (hsPkgs."ethereum-rlp" or (errorHandler.buildDepError "ethereum-rlp"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          ];
        buildable = true;
        };
      tests = {
        "test-merkel-patricia-db" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."ethereum-rlp" or (errorHandler.buildDepError "ethereum-rlp"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."nibblestring" or (errorHandler.buildDepError "nibblestring"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }