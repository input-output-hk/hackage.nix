{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "free";
        version = "4.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/free/";
      url = "";
      synopsis = "Monads for free";
      description = "Free monads are useful for many tree-like structures and domain specific languages.\n\nA 'Monad' @n@ is a free 'Monad' for @f@ if every 'Monad' homomorphism\nfrom @n@ to another monad @m@ is equivalent to a natural transformation\nfrom @f@ to @m@.\n\nCofree comonads provide convenient ways to talk about branching streams and rose-trees,\nand can be used to annotate syntax trees.\n\nA 'Comonad' @v@ is a cofree 'Comonad' for @f@ if every 'Comonad' homomorphism\nanother comonad @w@ to @v@ is equivalent to a natural transformation\nfrom @w@ to @f@.";
      buildType = "Simple";
    };
    components = {
      "free" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.comonad)
          (hsPkgs.distributive)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
        ];
      };
    };
  }