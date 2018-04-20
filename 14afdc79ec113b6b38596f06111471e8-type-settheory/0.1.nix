{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "type-settheory";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniels@community.haskell.org";
        author = "Daniel Schüssler";
        homepage = "";
        url = "";
        synopsis = "Type-level sets and functions expressed as types";
        description = "Type classes can express sets and functions on the type level, but they are not first-class citizens. Here we take the approach of expressing type-level sets and functions as /types/. The instance system is replaced by value-level proofs which can be directly manipulated. In this way the Haskell type level can support a quite expressive constructive set theory; for example, we have:\n\n* Subsets and extensional set equality\n\n* Unions (binary or of sets of sets), intersections, cartesian products, powersets, and a kind of dependent sum and product\n\n* Functions and their composition, images, preimages, injectivity\n\nThe meaning of the proposition-types here is /not/ purely by convention; it is actually grounded in GHC \\\"reality\\\": A proof of @A :=: B@ gives us a safe coercion operator @A -> B@ (while the logic is inconsistent /at compile-time/ due to the fact that Haskell has general recursion, we still have that proofs of falsities are 'undefined' or non-terminating programs, so for example if 'Refl' is successfully pattern-matched, the proof must have been correct).";
        buildType = "Simple";
      };
      components = {
        type-settheory = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.category-extras
            hsPkgs.type-equality
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }