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
      specVersion = "2.0";
      identifier = { name = "libsecp256k1"; version = "0.0.2"; };
      license = "MIT";
      copyright = "(c) 2017 Jean-Pierre Rupp; (c) 2020 Haskoin Developers; (c) 2022 Keagan McClelland";
      maintainer = "keagan.mcclelland@gmail.com";
      author = "Keagan McClelland";
      homepage = "http://github.com/ProofOfKeags/secp256k1-haskell#readme";
      url = "";
      synopsis = "Bindings for secp256k1";
      description = "Sign and verify signatures using the secp256k1 library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libsecp256k1" or (errorHandler.pkgConfDepError "libsecp256k1"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."secp256k1-haskell" or (errorHandler.buildDepError "secp256k1-haskell"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }