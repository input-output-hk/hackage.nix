{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bmi2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bitvec"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Lelechenko, 2012-2016 James Cook";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Andrew Lelechenko <andrew.lelechenko@gmail.com>,\nJames Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/Bodigrim/bitvec";
      url = "";
      synopsis = "Space-efficient bit vectors";
      description = "A newtype over 'Bool' with a better 'Vector' instance.\n\nThe <https://hackage.haskell.org/package/vector vector>\npackage represents unboxed arrays of 'Bool'\nThis library provides a newtype wrapper 'Bit' and a custom instance\nof unboxed 'Vector', which packs bits densely,\nachieving __8x less memory footprint.__\nThe performance stays mostly the same;\nthe most significant degradation happens for random writes\n(up to 10% slower).\nOn the other hand, for certain bulk bit operations\n'Vector' 'Bit' is up to 64x faster than 'Vector' 'Bool'.\n\n=== Thread safety\n\n* \"Data.Bit\" is faster, but writes and flips are thread-unsafe.\nThis is because naive updates are not atomic:\nread the whole word from memory,\nthen modify a bit, then write the whole word back.\n* \"Data.Bit.ThreadSafe\" is slower (up to 20%),\nbut writes and flips are thread-safe.\n\n=== Similar packages\n\n* <https://hackage.haskell.org/package/bv bv> and\n<https://hackage.haskell.org/package/bv-little bv-little>\ndo not offer mutable vectors.\n\n* <https://hackage.haskell.org/package/array array>\nis memory-efficient for 'Bool', but lacks\na handy 'Vector' interface and is not thread-safe.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (flags.bmi2 && (compiler.isGhc && (compiler.version).ge "8.4.1")) (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "bitvec-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bitvec" or ((hsPkgs.pkgs-errors).buildDepError "bitvec"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      benchmarks = {
        "gauge" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bitvec" or ((hsPkgs.pkgs-errors).buildDepError "bitvec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }