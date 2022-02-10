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
      specVersion = "1.18";
      identifier = { name = "manifolds"; version = "0.5.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) sagemueller $ geo.uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/manifolds";
      url = "";
      synopsis = "Coordinate-free hypersurfaces";
      description = "Manifolds, a generalisation of the notion of &#x201c;smooth curves&#x201d; or surfaces,\nare topological spaces /locally homeomorphic to a vector space/. This gives\nrise to what is actually the most natural / mathematically elegant way of dealing\nwith them: calculations can be carried out locally, in connection with Riemannian\nproducts etc., in a vector space, the tangent space / tangent bundle.\n\nHowever, this does not trivially translate to non-local operations. Common\nways to carry those out include using a single affine map to cover (almost) all of the manifold\n(in general not possible homeomorphically, which leads to both topological and geometrical\nproblems), to embed the manifold into a larger-dimensional vector space (which tends\nto distract from the manifold's own properties and is often not friendly to computations)\nor approximating the manifold by some kind of finite simplicial mesh (which intrinsically\nintroduces non-differentiability issues and leads to the question of what precision\nis required).\n\nThis library tries to mitigate these problems by using Haskell's\nfunctional nature to keep the representation close to the mathematical ideal of\nlocal linearity with homeomorphic coordinate transforms, and, where it is\nnecessary to recede to the less elegant alternatives, exploiting lazy evaluation\netc. to optimise the compromises that have to be made.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."manifolds-core" or (errorHandler.buildDepError "manifolds-core"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."free-vector-spaces" or (errorHandler.buildDepError "free-vector-spaces"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."linearmap-category" or (errorHandler.buildDepError "linearmap-category"))
          (hsPkgs."spatial-rotations" or (errorHandler.buildDepError "spatial-rotations"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."number-show" or (errorHandler.buildDepError "number-show"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          (hsPkgs."constrained-categories" or (errorHandler.buildDepError "constrained-categories"))
          (hsPkgs."pragmatic-show" or (errorHandler.buildDepError "pragmatic-show"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."manifolds" or (errorHandler.buildDepError "manifolds"))
            (hsPkgs."pragmatic-show" or (errorHandler.buildDepError "pragmatic-show"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."spatial-rotations" or (errorHandler.buildDepError "spatial-rotations"))
            (hsPkgs."constrained-categories" or (errorHandler.buildDepError "constrained-categories"))
            (hsPkgs."linearmap-category" or (errorHandler.buildDepError "linearmap-category"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }