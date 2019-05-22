{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "bv-little"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alex Washburn 2018";
      maintainer = "hackage@recursion.ninja";
      author = "Alex Washburn";
      homepage = "https://github.com/recursion-ninja/bv-little";
      url = "";
      synopsis = "Efficient little-endian bit vector library";
      description = "\nThis package contains a time- and space- efficient implementation of /little-endian/ bit vectors. Provides implementations of applicable typeclasses and numeric conversions.\n\nThe declared cost of each operation is either worst-case or amortized.\n\nFor an implementation of /big-endian/ bit vectors, use the <https://hackage.haskell.org/package/bv bv> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.integer-gmp)
          (hsPkgs.keys)
          (hsPkgs.mono-traversable)
          (hsPkgs.mono-traversable-keys)
          (hsPkgs.primitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.text-show)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bv-little)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.mono-traversable)
            (hsPkgs.mono-traversable-keys)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.text-show)
            ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            ];
          };
        };
      benchmarks = {
        "benchmark-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bv-little)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.mono-traversable)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
          };
        };
      };
    }