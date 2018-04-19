{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "free";
          version = "4.12.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/free/";
        url = "";
        synopsis = "Monads for free";
        description = "Free monads are useful for many tree-like structures and domain specific languages.\n\nIf @f@ is a 'Functor' then the free 'Monad' on @f@ is the type\nof trees whose nodes are labeled with the constructors of @f@. The word\n\\\"free\\\" is used in the sense of \\\"unrestricted\\\" rather than \\\"zero-cost\\\":\n@Free f@ makes no constraining assumptions beyond those given by @f@ and the\ndefinition of 'Monad'. As used here it is a standard term from the\nmathematical theory of adjoint functors.\n\nCofree comonads are dual to free monads. They provide convenient ways to talk\nabout branching streams and rose-trees, and can be used to annotate syntax\ntrees. The cofree comonad can be seen as a stream parameterized by a 'Functor'\nthat controls its branching factor.\n\nMore information on free monads, including examples, can be found in the\nfollowing blog posts:\n<http://comonad.com/reader/2008/monads-for-free/>\n<http://comonad.com/reader/2011/free-monads-for-less/>";
        buildType = "Simple";
      };
      components = {
        free = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.comonad
            hsPkgs.distributive
            hsPkgs.mtl
            hsPkgs.prelude-extras
            hsPkgs.profunctors
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.template-haskell
            hsPkgs.exceptions
            hsPkgs.containers
          ];
        };
      };
    }