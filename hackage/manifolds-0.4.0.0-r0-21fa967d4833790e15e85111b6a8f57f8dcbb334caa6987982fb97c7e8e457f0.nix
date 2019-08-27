let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "manifolds"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) sagemueller \$ geo.uni-koeln.de";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."manifolds-core" or (buildDepError "manifolds-core"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."free-vector-spaces" or (buildDepError "free-vector-spaces"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."MemoTrie" or (buildDepError "MemoTrie"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."linearmap-category" or (buildDepError "linearmap-category"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."constrained-categories" or (buildDepError "constrained-categories"))
          ];
        };
      };
    }