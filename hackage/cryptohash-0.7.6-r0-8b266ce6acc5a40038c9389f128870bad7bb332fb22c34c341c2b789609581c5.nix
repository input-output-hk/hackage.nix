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
    flags = { test = false; benchmark = false; cryptoapi = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cryptohash"; version = "0.7.6"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cryptohash";
      url = "";
      synopsis = "collection of crypto hashes, fast, pure and practical";
      description = "A collection of crypto hashes, with a practical incremental and one-pass, pure APIs,\nwith performance close to the fastest implementations available in others languages.\n\nThe implementations are made in C with a haskell FFI wrapper that hide the C implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (flags.cryptoapi) [
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      exes = {
        "Tests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ] ++ (pkgs.lib).optionals (flags.cryptoapi) [
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            ];
          buildable = if flags.test then true else false;
          };
        "Bench" = {
          depends = (pkgs.lib).optionals (flags.benchmark) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ] ++ (pkgs.lib).optionals (flags.cryptoapi) [
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            ];
          buildable = if flags.benchmark then true else false;
          };
        };
      };
    }