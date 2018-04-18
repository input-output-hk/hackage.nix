{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "free-functors";
          version = "0.6.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/free-functors";
        url = "";
        synopsis = "Provides free functors that are adjoint to functors that forget class constraints.";
        description = "A free functor is a left adjoint to a forgetful functor. It used to be the case\nthat the only category that was easy to work with in Haskell was Hask itself, so\nthere were no interesting forgetful functors.\n\nBut the new ConstraintKinds feature of GHC provides an easy way of creating\nsubcategories of Hask. That brings interesting opportunities for free (and cofree) functors.\n\nThe examples directory contains an implementation of non-empty lists as free semigroups,\nand automata as free actions. The standard example of free higher order functors is free monads,\nand this definition can be found in Data.Functor.HFree.";
        buildType = "Simple";
      };
      components = {
        free-functors = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.transformers
            hsPkgs.comonad
            hsPkgs.void
            hsPkgs.algebraic-classes
            hsPkgs.template-haskell
          ];
        };
      };
    }