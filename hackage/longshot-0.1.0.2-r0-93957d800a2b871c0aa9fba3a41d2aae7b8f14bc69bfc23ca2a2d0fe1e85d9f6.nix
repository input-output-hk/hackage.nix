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
      identifier = { name = "longshot"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "Francis, 2020";
      maintainer = "thyeem@gmail.com";
      author = "Francis Lim, Jongwhan Lee";
      homepage = "https://github.com/thyeem/longshot#readme";
      url = "";
      synopsis = "Fast Brute-force search using parallelism";
      description = "Longshot enables to search for preimages from a given hash value\nusing a brute-force method based on parallelism.\n\n* Support various search lengths, character sets and hashers\n* Strict mode: searches only for a given exact length\n* Deep mode: searches everything less than or equal to a given length.\n* Use @CPUs@ as much as possible. Get the most out of them!\n* Use, however, @memory@ as little as possible.\n\nPlease see the documentation at https://github.com/thyeem/longshot\nfor usage example.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."blake2" or (errorHandler.buildDepError "blake2"))
          (hsPkgs."blake3" or (errorHandler.buildDepError "blake3"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "longshot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."blake2" or (errorHandler.buildDepError "blake2"))
            (hsPkgs."blake3" or (errorHandler.buildDepError "blake3"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."longshot" or (errorHandler.buildDepError "longshot"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
      tests = {
        "longshot-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."blake2" or (errorHandler.buildDepError "blake2"))
            (hsPkgs."blake3" or (errorHandler.buildDepError "blake3"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."longshot" or (errorHandler.buildDepError "longshot"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }