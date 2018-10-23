{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "functor-apply";
        version = "0.9.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Applicative sans pure, Monad sans return, Alternative sans empty";
      description = "Provides a wide array of semigroup based Functors.\n\nWhen working with comonads you often have the @\\<*\\>@ portion of an @Applicative@, but\nnot the @pure@. This was captured in Uustalu and Vene's \\\"Essence of Dataflow Programming\\\"\nin the form of the @ComonadZip@ class in the days before @Applicative@, manifested here\nas @ComonadApply@.\n\nLogically:\n\n> Functor -----> Apply -------------> Bind\n>   |           / |   \\                |\n>   v          /  v    v               v\n> Extend      /  Alt  Applicative -> Monad\n>   |        /    |       |            |\n>   v       /     v       v            |\n> Comonad  /    ApplicativeAlt         |\n>   |     /           |                |\n>   v    v            v                v\n> ComonadApply   Alternative --> MonadPlus\n\nThis lets us remove many of the restrictions from various (co)monad transformers\nas in many cases the (co)binding operation or @\\<*\\>@ operation does not require them.\n\nFinally, to work with these weaker structures it is beneficial to have containers\nthat can provide stronger guarantees about their contents, so versions of 'Traversable'\nand 'Foldable' that can be folded with just a 'Semigroup' are added.";
      buildType = "Simple";
    };
    components = {
      "functor-apply" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.comonad)
          (hsPkgs.semigroups)
        ];
      };
    };
  }