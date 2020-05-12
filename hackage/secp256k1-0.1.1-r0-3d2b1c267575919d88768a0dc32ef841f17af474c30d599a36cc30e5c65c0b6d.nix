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
      identifier = { name = "secp256k1"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2015 Jean-Pierre Rupp";
      maintainer = "root@haskoin.com";
      author = "Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/secp256k1#readme";
      url = "";
      synopsis = "secp256k1 bindings for Haskell";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          ];
        libs = [ (pkgs."secp256k1" or (errorHandler.sysDepError "secp256k1")) ];
        buildable = true;
        };
      tests = {
        "secp256k1-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."secp256k1" or (errorHandler.buildDepError "secp256k1"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            ];
          buildable = true;
          };
        };
      };
    }