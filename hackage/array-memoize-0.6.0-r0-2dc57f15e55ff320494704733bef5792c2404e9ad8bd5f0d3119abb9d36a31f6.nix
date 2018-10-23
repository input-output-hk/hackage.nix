{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "array-memoize";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "Dominic Orchard, 2014";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Memoization combinators using arrays for finite sub-domains of functions";
      description = "Memoization combinators are great for providing high-performance Haskell programs,\nbut they can be even faster if memoization is performed on a finite, discrete domain\nsince an array can then be used to store results.\n\nThis package provides various combinators for doing just this, including also\ncombinators for quanitzing and discretizing Float/Double-valued functions.\n\nExample:\n\n@\nfib' :: (Int -> Int) -> Int -> Int\nfib' _ 0 = 1\nfib' _ 1 = 1\nfib' rec n = rec (n - 1) + rec (n - 2)\nfib :: Int -> Int\nfib = arrayMemoFix (0, 1000) fib'\n@";
      buildType = "Simple";
    };
    components = {
      "array-memoize" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }