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
      identifier = { name = "eccrypto"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2009-2019";
      maintainer = "Marcel Fourné (haskell@marcelfourne.de)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "Elliptic Curve Cryptography for Haskell";
      description = "Elliptic Curve Cryptography in Haskell, evolved for correctness and practical usability from higher-level libraries.\n\nThe implementation is pure Haskell and as generic and fast as reasonably possible. Timing-attack resistance is important, failure must be documented.\n\nThis library was formerly known and its code originated as hecc, but since this would imply Hyperelliptic ECC, the name was changed.\n\nAlso the scope was changed by selecting best internal formats and no longer trying to be overly general, allowing more optimizations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"));
        buildable = true;
        };
      tests = {
        "eccrypto-testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."eccrypto" or (errorHandler.buildDepError "eccrypto"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "eccrypto-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."eccrypto" or (errorHandler.buildDepError "eccrypto"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }