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
    flags = { template-haskell = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bound"; version = "2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bound/";
      url = "";
      synopsis = "Making de Bruijn Succ Less";
      description = "We represent the target language itself as an ideal monad supplied by the\nuser, and provide a 'Scope' monad transformer for introducing bound variables\nin user supplied terms. Users supply a 'Monad' and 'Traversable' instance,\nand we traverse to find free variables, and use the Monad to perform\nsubstitution that avoids bound variables.\n\nSlides describing and motivating this approach to name binding are available\nonline at:\n\n<http://www.slideshare.net/ekmett/bound-making-de-bruijn-succ-less>\n\nThe goal of this package is to make it as easy as possible to deal with name\nbinding without forcing an awkward monadic style on the user.\n\nWith generalized de Bruijn term you can 'lift' whole trees instead of just\napplying 'succ' to individual variables, weakening the all variables bound\nby a scope and greatly speeding up instantiation. By giving binders more\nstructure we permit easy simultaneous substitution and further speed up\ninstantiation.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (flags.template-haskell && (compiler.isGhc && true)) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
        };
      tests = {
        "Simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ];
          buildable = true;
          };
        "Overkill" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            (hsPkgs."functor-classes-compat" or (errorHandler.buildDepError "functor-classes-compat"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if !(compiler.isGhc && (compiler.version).ge "7.8")
            then false
            else true;
          };
        "Deriving" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ];
          buildable = true;
          };
        "Imperative" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            ];
          buildable = true;
          };
        };
      };
    }