{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { check-bounds = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "arithmoi"; version = "0.8.0.0"; };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer, 2016-2018 Andrew Lelechenko, Carter Schonwald";
      maintainer = "Carter Schonwald  carter at wellposed dot com,\nAndrew Lelechenko andrew dot lelechenko at gmail dot com";
      author = "Daniel Fischer";
      homepage = "https://github.com/cartazio/arithmoi";
      url = "";
      synopsis = "Efficient basic number-theoretic functions.";
      description = "A library of basic functionality needed for\nnumber-theoretic calculations. The aim of this library\nis to provide efficient implementations of the functions.\nPrimes and related things (totients, factorisation),\npowers (integer roots and tests, modular exponentiation).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."exact-pi" or ((hsPkgs.pkgs-errors).buildDepError "exact-pi"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."integer-logarithms" or ((hsPkgs.pkgs-errors).buildDepError "integer-logarithms"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."exact-pi" or ((hsPkgs.pkgs-errors).buildDepError "exact-pi"))
            (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."integer-logarithms" or ((hsPkgs.pkgs-errors).buildDepError "integer-logarithms"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }