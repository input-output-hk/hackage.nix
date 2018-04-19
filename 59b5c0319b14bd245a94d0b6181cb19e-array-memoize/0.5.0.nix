{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "array-memoize";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Dominic Orchard, 2014";
        maintainer = "Dominic Orchard";
        author = "Dominic Orchard";
        homepage = "";
        url = "";
        synopsis = "Memoization combinators for finite subsets of function domains using arrays";
        description = "Memoization combinators are great for providing high-performance Haskell programs,\nbut they can be even faster if memoization is performed on a finite, discrete domain\nas an array can then be used.\n\nThis package provides various combinators for doing just this, including also\ncombinators for quanitzing and discretizing Float/Double-valued functions.\n\nExample:\n\n@\nfibA :: Int -> Int\nfibA 0 = 1\nfibA 1 = 1\nfibA n = fibB (n - 1) + fibB (n - 2)\nfibB = arrayMemo (0, 1000) fibA\n@";
        buildType = "Simple";
      };
      components = {
        array-memoize = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }