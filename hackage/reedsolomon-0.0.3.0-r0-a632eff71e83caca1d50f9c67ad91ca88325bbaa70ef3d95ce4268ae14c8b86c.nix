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
    flags = { simd = true; llvm = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "reedsolomon"; version = "0.0.3.0"; };
      license = "MIT";
      copyright = "(c) 2015, Nicolas Trangez\n(c) 2015, Klaus Post\n(c) 2015, Backblaze";
      maintainer = "ikke@nicolast.be";
      author = "Nicolas Trangez";
      homepage = "http://github.com/NicolasT/reedsolomon";
      url = "";
      synopsis = "Reed-Solomon Erasure Coding in Haskell";
      description = "Please see README.md";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."loop" or (errorHandler.buildDepError "loop"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
          ];
        buildable = true;
        };
      exes = {
        "reedsolomon-simple-encoder" = {
          depends = (pkgs.lib).optionals (!system.isWindows) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring-mmap" or (errorHandler.buildDepError "bytestring-mmap"))
            (hsPkgs."reedsolomon" or (errorHandler.buildDepError "reedsolomon"))
            ];
          buildable = if !system.isWindows then true else false;
          };
        "reedsolomon-simple-decoder" = {
          depends = (pkgs.lib).optionals (!system.isWindows) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring-mmap" or (errorHandler.buildDepError "bytestring-mmap"))
            (hsPkgs."reedsolomon" or (errorHandler.buildDepError "reedsolomon"))
            ];
          buildable = if !system.isWindows then true else false;
          };
        "reedsolomon-simple-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."reedsolomon" or (errorHandler.buildDepError "reedsolomon"))
            ];
          buildable = true;
          };
        "reedsolomon-profiling" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."reedsolomon" or (errorHandler.buildDepError "reedsolomon"))
            ];
          buildable = true;
          };
        };
      tests = {
        "reedsolomon-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."loop" or (errorHandler.buildDepError "loop"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-ant-xml" or (errorHandler.buildDepError "tasty-ant-xml"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reedsolomon" or (errorHandler.buildDepError "reedsolomon"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "reedsolomon-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."loop" or (errorHandler.buildDepError "loop"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."reedsolomon" or (errorHandler.buildDepError "reedsolomon"))
            ];
          buildable = true;
          };
        };
      };
    }