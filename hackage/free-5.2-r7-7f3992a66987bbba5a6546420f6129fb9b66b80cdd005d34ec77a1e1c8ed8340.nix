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
      identifier = { name = "free"; version = "5.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/free/";
      url = "";
      synopsis = "Monads for free";
      description = "Free monads are useful for many tree-like structures and domain specific languages.\n\nIf @f@ is a 'Functor' then the free 'Monad' on @f@ is the type\nof trees whose nodes are labeled with the constructors of @f@. The word\n\\\"free\\\" is used in the sense of \\\"unrestricted\\\" rather than \\\"zero-cost\\\":\n@Free f@ makes no constraining assumptions beyond those given by @f@ and the\ndefinition of 'Monad'. As used here it is a standard term from the\nmathematical theory of adjoint functors.\n\nCofree comonads are dual to free monads. They provide convenient ways to talk\nabout branching streams and rose-trees, and can be used to annotate syntax\ntrees. The cofree comonad can be seen as a stream parameterized by a 'Functor'\nthat controls its branching factor.\n\nMore information on free monads, including examples, can be found in the\nfollowing blog posts:\n<https://ekmett.github.io/reader/2008/monads-for-free/>\n<https://ekmett.github.io/reader/2011/free-monads-for-less/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.2")) (hsPkgs."bifunctor-classes-compat" or (errorHandler.buildDepError "bifunctor-classes-compat"));
        buildable = true;
      };
    };
  }