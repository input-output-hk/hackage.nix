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
    flags = { setindex = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "comfort-array"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/comfort-array/";
      url = "";
      synopsis = "Arrays where the index type is a function of the shape type";
      description = "Arrays from the basic @array@ package are already very powerful\ncompared with arrays in other languages.\nThey may have any number of dimensions, are type safe\nand defined in a uniform way using the Ix class\nwith free choice of the lower bounds (0, 1, or whatever you like).\n\nThis package goes one step further:\nThe shape and the index type are different,\nbut the index type is a type function of the shape type.\nThis offers much more flexibility and type safety.\n\nSome examples are:\n\n* @Range@:\nAllow dynamic choice of lower and upper array bounds\nsuch as in the 'Array's from the @array@ package.\nYou can combine it with other shapes in other dimensions.\nIt allows you to describe the bounds of each dimension individually.\n\n* @Shifted@:\nDescribe array bounds by start index and length.\nIt is sometimes more natural to use these parameters.\nE.g. a non-negative index type like 'Word' cannot represent @-1@\nand thus cannot encode an empty range starting with index @0@.\n\n* @ZeroBased, OneBased@:\nArrays with fixed lower bound, either 0 or 1, respectively.\n\n* @Cyclic@:\nIndices with wrap-around semantics.\n\n* @Zero, ()@:\nArrays with fixed size 0 or 1, respectively.\n\n* @Enumeration@:\nArrays with indices like 'LT', 'EQ', 'GT' and a shape of fixed size.\n\n* @NestedTuple@:\nArrays with shapes that are compatible to nested tuples\nlike @(a,(a,a))@ and indices like @fst@ and @fst.snd@.\n\n* @(::+)@:\nThe Append type constructor allows to respresent block arrays,\ne.g. block matrices.\nIt also allows to represent non-empty arrays via @()::+sh@.\n\n* @Set@: Use an arbitrary ordered set as index set.\n\n* @Map@: Concatenate a set of shapes.\n\n* @Triangular@:\nA 2D array with the shape of a lower or upper triangular matrix.\n\n* @Simplex@:\nSimplices of any dimension, where the dimension is encoded in the type.\nAn index is a tuple of monotonic ordered sub-indices.\n\n* @Square@: A 2D array where both dimensions always have equal size.\n\n* @Cube@: A 3D array where all three dimensions always have equal size.\n\n* @Tagged@: Statically distinguish shapes and indices that are isomorphic.\n\nWith our @Array@ type you can perform\n\n* Fast Linear Algebra using the packages @comfort-blas@ and @lapack@.\nThe @lapack@ package defines even more fancy shapes\nlike tall rectangular matrices, triangular matrices and banded matrices.\n\n* Fast Fourier Transforms using the package @comfort-fftw@\n\n* Fast Linear Programming using the packages @comfort-glpk@ and @coinor-clp@\n\n* Efficient Array Processing via LLVM Just-In-Time code generation\nusing the package @knead@.\n\nSee also @comfort-graph@ for a Graph data structure,\nwith non-Int node identifiers and flexible edge types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."guarded-allocation" or (errorHandler.buildDepError "guarded-allocation"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or (errorHandler.buildDepError "prelude-compat"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.setindex) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
        buildable = true;
      };
      tests = {
        "comfort-array-test" = {
          depends = [
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."ChasingBottoms" or (errorHandler.buildDepError "ChasingBottoms"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }