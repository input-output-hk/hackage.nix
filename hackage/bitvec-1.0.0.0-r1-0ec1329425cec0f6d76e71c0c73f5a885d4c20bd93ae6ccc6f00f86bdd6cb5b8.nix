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
    flags = { bmi2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bitvec"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Lelechenko, 2012-2016 James Cook";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Andrew Lelechenko <andrew.lelechenko@gmail.com>,\nJames Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/Bodigrim/bitvec";
      url = "";
      synopsis = "Unboxed bit vectors";
      description = "Bit vectors library for Haskell.\n\nThe current [vector](https://hackage.haskell.org/package/vector)\npackage represents unboxed arrays of 'Bool'\nallocating one byte per boolean, which might be considered wasteful.\nThis library provides a newtype wrapper 'Data.Bit.Bit' and a custom instance\nof unboxed 'Data.Vector.Unboxed.Vector', which packs booleans densely.\nIt is a time-memory tradeoff: 8x less memory footprint\nat the price of moderate performance penalty\n(mostly, for random writes).\n\n=== Thread safety\n* \"Data.Bit\" is faster, but thread-unsafe. This is because\nnaive updates are not atomic operations: read the whole word from memory,\nmodify a bit, write the whole word back.\n* \"Data.Bit.ThreadSafe\" is slower (up to 2x), but thread-safe.\n\n=== Similar packages\n\n* [bv](https://hackage.haskell.org/package/bv)\nand [bv-little](https://hackage.haskell.org/package/bv-little)\noffer only immutable size-polymorphic bit vectors.\n@bitvec@ provides an interface to mutable vectors as well.\n\n* [array](https://hackage.haskell.org/package/array)\nis memory-efficient for 'Bool', but lacks\na handy 'Vector' interface and is not thread-safe.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.bmi2 && (compiler.isGhc && compiler.version.ge "8.4.1")) (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "bitvec-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
      };
      benchmarks = {
        "gauge" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }