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
      specVersion = "1.6";
      identifier = {
        name = "type-settheory";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniels@community.haskell.org";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Sets and functions-as-relations in the type system";
      description = "Type classes can express sets and functions on the type level, but they are not first-class. This package expresses type-level sets and functions as /types/ instead.\n\nInstances are replaced by value-level proofs which can be directly manipulated; this makes quite a bit of (constructive) set theory expressible; for example, we have:\n\n* Subsets and extensional set equality\n\n* Unions (binary or of sets of sets), intersections, cartesian products, powersets, and a sort of dependent sum and product\n\n* Functions and their composition, images, preimages, injectivity\n\nThe proposition-types (derived from the ':=:' equality type) aren't meaningful purely by convention; they relate to the rest of Haskell as follows: A proof of @A :=: B@ gives us a safe coercion operator @A -> B@ (while the logic is inevitably inconsistent /at compile-time/ since 'undefined' proves anything, I think that we still have the property that if the 'Refl' value is successfully pattern-matched, then the two parameters in its type are actually equal).";
      buildType = "Simple";
    };
    components = {
      "type-settheory" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.type-equality)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }