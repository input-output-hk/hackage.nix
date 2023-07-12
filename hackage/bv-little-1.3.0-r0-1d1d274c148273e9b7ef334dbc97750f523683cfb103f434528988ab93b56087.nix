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
      specVersion = "3.0";
      identifier = { name = "bv-little"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alex Washburn 2020";
      maintainer = "hackage@recursion.ninja";
      author = "Alex Washburn";
      homepage = "https://github.com/recursion-ninja/bv-little";
      url = "";
      synopsis = "Efficient little-endian bit vector library";
      description = ".\nThis package contains a time- and space- efficient implementation of /little-endian, immutable/ bit vectors. Provides implementations of applicable typeclasses and numeric conversions.\n.\nThe declared cost of each operation is either worst-case or amortized.\n.\nFor an implementation of /big-endian, immutable/ bit vectors use the <https://hackage.haskell.org/package/bv bv> package.\n.\nFor an implementation of /little-endian, mutable/ bit vectors, use the <https://hackage.haskell.org/package/bitvec bitvec> package.          ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bv-little".components.sublibs.core or (errorHandler.buildDepError "bv-little:core"))
          ];
        buildable = true;
        };
      sublibs = {
        "core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = true;
          };
        "instances" = {
          depends = [
            (hsPkgs."bv-little".components.sublibs.instances-binary or (errorHandler.buildDepError "bv-little:instances-binary"))
            (hsPkgs."bv-little".components.sublibs.instances-mono-traversable or (errorHandler.buildDepError "bv-little:instances-mono-traversable"))
            (hsPkgs."bv-little".components.sublibs.instances-mono-traversable-keys or (errorHandler.buildDepError "bv-little:instances-mono-traversable-keys"))
            (hsPkgs."bv-little".components.sublibs.instances-quickcheck or (errorHandler.buildDepError "bv-little:instances-quickcheck"))
            (hsPkgs."bv-little".components.sublibs.instances-text-show or (errorHandler.buildDepError "bv-little:instances-text-show"))
            ];
          buildable = true;
          };
        "instances-binary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bv-little".components.sublibs.core or (errorHandler.buildDepError "bv-little:core"))
            ];
          buildable = true;
          };
        "instances-mono-traversable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bv-little".components.sublibs.core or (errorHandler.buildDepError "bv-little:core"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            ];
          buildable = true;
          };
        "instances-mono-traversable-keys" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bv-little".components.sublibs.core or (errorHandler.buildDepError "bv-little:core"))
            (hsPkgs."bv-little".components.sublibs.instances-mono-traversable or (errorHandler.buildDepError "bv-little:instances-mono-traversable"))
            (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."mono-traversable-keys" or (errorHandler.buildDepError "mono-traversable-keys"))
            ];
          buildable = true;
          };
        "instances-quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bv-little".components.sublibs.core or (errorHandler.buildDepError "bv-little:core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "instances-text-show" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bv-little".components.sublibs.core or (errorHandler.buildDepError "bv-little:core"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Test-Suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bv-little".components.sublibs.instances or (errorHandler.buildDepError "bv-little:instances"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."mono-traversable-keys" or (errorHandler.buildDepError "mono-traversable-keys"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Benchmark-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bv-little".components.sublibs.instances or (errorHandler.buildDepError "bv-little:instances"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            ];
          buildable = true;
          };
        "Benchmark-heap-stack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-little" or (errorHandler.buildDepError "bv-little"))
            (hsPkgs."bv-little".components.sublibs.instances or (errorHandler.buildDepError "bv-little:instances"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }