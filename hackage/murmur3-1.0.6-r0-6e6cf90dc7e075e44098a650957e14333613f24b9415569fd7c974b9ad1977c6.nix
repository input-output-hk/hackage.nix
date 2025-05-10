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
      identifier = { name = "murmur3"; version = "1.0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "jprupp@protonmail.ch";
      author = "JP Rupp";
      homepage = "https://github.com/haskoin/murmur3#readme";
      url = "";
      synopsis = "Pure Haskell implementation of the MurmurHash3 x86 algorithm";
      description = "MurmurHash3 is a non-cryptographic hash function suitable for general hash-based lookup. We provide the x86 version which closely follows  the following implementation: <https://code.google.com/p/smhasher/source/browse/trunk/MurmurHash3.cpp>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
        ];
        buildable = true;
      };
      tests = {
        "test-murmur3" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."murmur3" or (errorHandler.buildDepError "murmur3"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }