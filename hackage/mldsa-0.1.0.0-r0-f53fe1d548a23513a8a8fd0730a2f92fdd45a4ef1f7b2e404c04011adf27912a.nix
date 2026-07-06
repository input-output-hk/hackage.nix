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
    flags = { use_crypton = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "mldsa"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Olivier Chéron";
      maintainer = "olivier.cheron@gmail.com";
      author = "Olivier Chéron";
      homepage = "https://codeberg.org/ocheron/hs-mldsa#readme";
      url = "";
      synopsis = "Module-Lattice-based Digital Signature Algorithm";
      description = "Module-Lattice-based Digital Signature Algorithm (ML-DSA) implemented in\nHaskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ] ++ (if flags.use_crypton
          then [
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."ram" or (errorHandler.buildDepError "ram"))
          ]
          else [
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          ]);
        buildable = true;
      };
      tests = {
        "mldsa-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
            (hsPkgs."mldsa" or (errorHandler.buildDepError "mldsa"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (if flags.use_crypton
            then [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
              (hsPkgs."ram" or (errorHandler.buildDepError "ram"))
            ]
            else [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
              (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            ]);
          buildable = true;
        };
        "mldsa-test-full" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (if flags.use_crypton
            then [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
              (hsPkgs."ram" or (errorHandler.buildDepError "ram"))
            ]
            else [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
              (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            ]);
          buildable = true;
        };
      };
      benchmarks = {
        "mldsa-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mldsa" or (errorHandler.buildDepError "mldsa"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ] ++ (if flags.use_crypton
            then [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
              (hsPkgs."ram" or (errorHandler.buildDepError "ram"))
            ]
            else [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
              (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            ]);
          buildable = true;
        };
      };
    };
  }