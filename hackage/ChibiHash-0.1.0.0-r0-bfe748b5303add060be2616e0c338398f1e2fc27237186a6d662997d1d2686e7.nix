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
      specVersion = "1.18";
      identifier = { name = "ChibiHash"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2024 Ville Vesilehto";
      maintainer = "ville@vesilehto.fi";
      author = "Ville Vesilehto";
      homepage = "https://github.com/thevilledev/ChibiHash-hs";
      url = "";
      synopsis = "a simple and fast 64-bit hash function";
      description = "Haskell port of ChibiHash, a simple and fast 64-bit hash function.\n\nFeatures:\n\n* Fast 64-bit hashing\n* Suitable for hash tables and hash-based data structures\n\nFor more information, see the article \"ChibiHash: A small, fast 64-bit hash function\"\nat https://nrk.neocities.org/articles/chibihash";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "ChibiHash-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ChibiHash" or (errorHandler.buildDepError "ChibiHash"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ChibiHash-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ChibiHash" or (errorHandler.buildDepError "ChibiHash"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }