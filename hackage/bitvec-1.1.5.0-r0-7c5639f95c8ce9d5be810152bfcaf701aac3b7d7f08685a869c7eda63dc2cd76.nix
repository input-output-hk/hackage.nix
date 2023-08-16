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
    flags = { simd = true; };
    package = {
      specVersion = "2.0";
      identifier = { name = "bitvec"; version = "1.1.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2019-2022 Andrew Lelechenko, 2012-2016 James Cook";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Andrew Lelechenko <andrew.lelechenko@gmail.com>,\nJames Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/Bodigrim/bitvec";
      url = "";
      synopsis = "Space-efficient bit vectors";
      description = "A newtype over 'Bool' with a better 'Vector' instance: 8x less memory, up to 3500x faster.\n\nThe <https://hackage.haskell.org/package/vector vector>\npackage represents unboxed arrays of 'Bool's\nspending 1 byte (8 bits) per boolean.\nThis library provides a newtype wrapper 'Bit' and a custom instance\nof an unboxed 'Vector', which packs bits densely,\nachieving an __8x smaller memory footprint.__\nThe performance stays mostly the same;\nthe most significant degradation happens for random writes\n(up to 10% slower).\nOn the other hand, for certain bulk bit operations\n'Vector' 'Bit' is up to 3500x faster than 'Vector' 'Bool'.\n\n=== Thread safety\n\n* \"Data.Bit\" is faster, but writes and flips are not thread-safe.\nThis is because naive updates are not atomic:\nthey read the whole word from memory,\nthen modify a bit, then write the whole word back.\nConcurrently modifying non-intersecting slices of the same underlying array\nmay also lead to unexpected results, since they can share a word in memory.\n* \"Data.Bit.ThreadSafe\" is slower (usually 10-20%),\nbut writes and flips are thread-safe.\nAdditionally, concurrently modifying non-intersecting slices of the same underlying array\nworks as expected. However, operations that affect multiple elements are not\nguaranteed to be atomic.\n\n=== Similar packages\n\n* <https://hackage.haskell.org/package/bv bv> and\n<https://hackage.haskell.org/package/bv-little bv-little>\ndo not offer mutable vectors.\n\n* <https://hackage.haskell.org/package/array array>\nis memory-efficient for 'Bool', but lacks\na handy 'Vector' interface and is not thread-safe.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (if compiler.isGhc && (compiler.version).lt "9.0"
          then [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ]
          else [
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
            ]);
        buildable = true;
        };
      tests = {
        "bitvec-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ] ++ (if compiler.isGhc && (compiler.version).lt "9.0"
            then [
              (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
              ]
            else [
              (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
              ]);
          buildable = true;
          };
        };
      benchmarks = {
        "bitvec-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (if compiler.isGhc && (compiler.version).lt "9.0"
            then [
              (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
              ]
            else [
              (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
              ]);
          buildable = true;
          };
        };
      };
    }