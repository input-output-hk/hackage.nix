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
      identifier = { name = "Dust-crypto"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "brandon@ischool.utexas.edu";
      author = "Brandon Wiley";
      homepage = "";
      url = "";
      synopsis = "Cryptographic operations";
      description = "Cryptographic operations used by the Dust polymorphic protocl engine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-extras" or (errorHandler.buildDepError "random-extras"))
          (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."skein" or (errorHandler.buildDepError "skein"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."threefish" or (errorHandler.buildDepError "threefish"))
          ];
        libs = (pkgs.lib).optional (system.isLinux || system.isOsx) (pkgs."crypto" or (errorHandler.sysDepError "crypto"));
        buildable = true;
        };
      tests = {
        "crypto" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Dust" or (errorHandler.buildDepError "Dust"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."threefish" or (errorHandler.buildDepError "threefish"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }