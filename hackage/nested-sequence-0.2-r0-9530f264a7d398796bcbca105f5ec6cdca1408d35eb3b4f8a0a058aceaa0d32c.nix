{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "nested-sequence";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Balazs Komuves, Peter Divianszky";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves, Peter Divianszky";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "List-like data structures with O(log(n)) random access";
      description = "List-like data structures implemented using nested data types and polymorphic\nrecursion. Also called \\\"n-ary random access lists\\\". They supports @O(log(n))@ lookup\nwhile still having amortized @O(1)@ access to the left end of the sequence.\nSomewhat similar to finger trees, but much simpler, and the ternary and\nquaternary versions are also more memory efficient; however, modifying\nthe right end of the sequence is still slow. See \"Data.Nested.Seq\"\nfor general comments and \"Data.Nested.Seq.Binary.Lazy\" for an explanation\nof the data structure.";
      buildType = "Simple";
    };
    components = {
      "nested-sequence" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "nested-sequence-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nested-sequence)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }