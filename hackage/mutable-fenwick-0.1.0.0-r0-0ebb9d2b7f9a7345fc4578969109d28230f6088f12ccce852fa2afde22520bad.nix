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
      specVersion = "2.4";
      identifier = { name = "mutable-fenwick"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) Parsa Alizade, 2025";
      maintainer = "parsa.alizadeh1@gmail.com";
      author = "Parsa Alizadeh";
      homepage = "https://github.com/ParsaAlizadeh/fenwick-tree";
      url = "";
      synopsis = "Mutable Fenwick trees";
      description = "This package provides an implementation of mutable\n[Fenwick trees](https://en.wikipedia.org/wiki/Fenwick_tree).\n\nIt is maximally generic. Each operation of Fenwick tree is implemented using a subset of constraints\nfrom @Semigroup@, @Monoid@, or @Commutative@, chosen based on the nature of each\noperation.\n\nIt is fast and efficient. With @ArrayC@ and @VectorC@ from this package, it is possible to use\nunboxed arrays and vectors for newtypes that implement a custom algebra (e.g. @Sum@, @Product@ or\n@Xor@). An implementation using this library can be as fast as a C/C++ implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."commutative-semigroups" or (errorHandler.buildDepError "commutative-semigroups"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "test-fenwick" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mutable-fenwick" or (errorHandler.buildDepError "mutable-fenwick"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }