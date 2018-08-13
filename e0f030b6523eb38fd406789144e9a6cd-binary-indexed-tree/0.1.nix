{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "binary-indexed-tree";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Maxwell Sayles <maxwellsayles@gmail.com>";
      author = "Maxwell Sayles <maxwellsayles@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Binary Indexed Trees (a.k.a. Fenwick Trees).";
      description = "Binary indexed trees are a data structure on indexes\n1 through n.  They allow you to compute the sum\nof all values at indexes 1 through i in O(logn) and to\nincrease the value at index i in O(logn).\n\nThis implements binary indexed trees, both\nas an immutable data structure in pure code\nand as a mutable data structure using the ST Monad.\n\nBoth the immutable and mutable version have the\nsame runtime complexity, but the mutable version\nhas a smaller constant.\n\nWritten by Maxwell Sayles (2012).";
      buildType = "Simple";
    };
    components = {
      "binary-indexed-tree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }