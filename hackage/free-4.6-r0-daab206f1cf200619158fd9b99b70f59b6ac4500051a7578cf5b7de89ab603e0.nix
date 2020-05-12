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
      specVersion = "1.10";
      identifier = { name = "free"; version = "4.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/free/";
      url = "";
      synopsis = "Monads for free";
      description = "Free monads are useful for many tree-like structures and domain specific languages.\n\nA 'Monad' @n@ is a free 'Monad' for @f@ if every 'Monad' homomorphism\nfrom @n@ to another monad @m@ is equivalent to a natural transformation\nfrom @f@ to @m@.\n\nCofree comonads provide convenient ways to talk about branching streams and rose-trees,\nand can be used to annotate syntax trees.\n\nA 'Comonad' @v@ is a cofree 'Comonad' for @f@ if every 'Comonad' homomorphism\nanother comonad @w@ to @v@ is equivalent to a natural transformation\nfrom @w@ to @f@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }