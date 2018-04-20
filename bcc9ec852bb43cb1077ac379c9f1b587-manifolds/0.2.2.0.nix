{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "manifolds";
          version = "0.2.2.0";
        };
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
        manifolds = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.vector-space
            hsPkgs.MemoTrie
            hsPkgs.vector
            hsPkgs.hmatrix
            hsPkgs.containers
            hsPkgs.comonad
            hsPkgs.semigroups
            hsPkgs.void
            hsPkgs.tagged
            hsPkgs.deepseq
            hsPkgs.trivial-constraint
            hsPkgs.constrained-categories
          ];
        };
      };
    }