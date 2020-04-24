{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jvm-batching"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 LeapYear Technologies";
      maintainer = "facundo.dominguez@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java/tree/master/jvm-batching#readme";
      url = "";
      synopsis = "Provides batched marshalling of values between Java and Haskell.";
      description = "Please see README.md.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.inline-java or (pkgs.buildPackages.inline-java or ((hsPkgs.pkgs-errors).buildToolDepError "inline-java")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."distributed-closure" or ((hsPkgs.pkgs-errors).buildDepError "distributed-closure"))
          (hsPkgs."jni" or ((hsPkgs.pkgs-errors).buildDepError "jni"))
          (hsPkgs."jvm" or ((hsPkgs.pkgs-errors).buildDepError "jvm"))
          (hsPkgs."inline-java" or ((hsPkgs.pkgs-errors).buildDepError "inline-java"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."inline-java" or ((hsPkgs.pkgs-errors).buildDepError "inline-java"))
            (hsPkgs."jvm" or ((hsPkgs.pkgs-errors).buildDepError "jvm"))
            (hsPkgs."jvm-batching" or ((hsPkgs.pkgs-errors).buildDepError "jvm-batching"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "micro-benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."jvm" or ((hsPkgs.pkgs-errors).buildDepError "jvm"))
            (hsPkgs."jvm-batching" or ((hsPkgs.pkgs-errors).buildDepError "jvm-batching"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }