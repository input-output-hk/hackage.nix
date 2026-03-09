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
    flags = { use_crypton = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "mlkem"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Olivier Chéron";
      maintainer = "olivier.cheron@gmail.com";
      author = "Olivier Chéron";
      homepage = "https://codeberg.org/ocheron/hs-mlkem#readme";
      url = "";
      synopsis = "Module-Lattice-based Key-Encapsulation Mechanism";
      description = "Module-Lattice-based Key-Encapsulation Mechanism (ML-KEM) implemented in\nHaskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ] ++ (if flags.use_crypton
          then [ (hsPkgs."crypton" or (errorHandler.buildDepError "crypton")) ]
          else [
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          ]);
        buildable = true;
      };
      tests = {
        "mlkem-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mlkem" or (errorHandler.buildDepError "mlkem"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (if flags.use_crypton
            then [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            ]
            else [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ]);
          buildable = true;
        };
        "mlkem-test-full" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (if flags.use_crypton
            then [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            ]
            else [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ]);
          buildable = true;
        };
      };
      benchmarks = {
        "mlkem-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mlkem" or (errorHandler.buildDepError "mlkem"))
          ] ++ (if flags.use_crypton
            then [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            ]
            else [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ]);
          buildable = true;
        };
      };
    };
  }