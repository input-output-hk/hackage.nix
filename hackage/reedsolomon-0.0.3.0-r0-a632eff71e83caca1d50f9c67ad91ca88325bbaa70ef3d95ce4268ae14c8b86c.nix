{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."loop" or ((hsPkgs.pkgs-errors).buildDepError "loop"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
          ];
        buildable = true;
        };
      exes = {
        "reedsolomon-simple-encoder" = {
          depends = (pkgs.lib).optionals (!system.isWindows) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring-mmap" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-mmap"))
            (hsPkgs."reedsolomon" or ((hsPkgs.pkgs-errors).buildDepError "reedsolomon"))
            ];
          buildable = if !system.isWindows then true else false;
          };
        "reedsolomon-simple-decoder" = {
          depends = (pkgs.lib).optionals (!system.isWindows) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring-mmap" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-mmap"))
            (hsPkgs."reedsolomon" or ((hsPkgs.pkgs-errors).buildDepError "reedsolomon"))
            ];
          buildable = if !system.isWindows then true else false;
          };
        "reedsolomon-simple-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."reedsolomon" or ((hsPkgs.pkgs-errors).buildDepError "reedsolomon"))
            ];
          buildable = true;
          };
        "reedsolomon-profiling" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."reedsolomon" or ((hsPkgs.pkgs-errors).buildDepError "reedsolomon"))
            ];
          buildable = true;
          };
        };
      tests = {
        "reedsolomon-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."loop" or ((hsPkgs.pkgs-errors).buildDepError "loop"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-ant-xml" or ((hsPkgs.pkgs-errors).buildDepError "tasty-ant-xml"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."reedsolomon" or ((hsPkgs.pkgs-errors).buildDepError "reedsolomon"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "reedsolomon-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."loop" or ((hsPkgs.pkgs-errors).buildDepError "loop"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."reedsolomon" or ((hsPkgs.pkgs-errors).buildDepError "reedsolomon"))
            ];
          buildable = true;
          };
        };
      };
    }