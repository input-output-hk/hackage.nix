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
    flags = { applicativeinbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "transformers"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "Andy Gill, Ross Paterson";
      homepage = "";
      url = "";
      synopsis = "Concrete functor and monad transformers";
      description = "A portable library of functor and monad transformers, inspired by\nthe paper \\\"Functional Programming with Overloading and Higher-Order\nPolymorphism\\\", by Mark P Jones,\nin /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).\n\nThis package contains:\n\n* the monad transformer class (in \"Control.Monad.Trans.Class\")\n\n* concrete functor and monad transformers, each with associated\noperations and functions to lift operations associated with other\ntransformers.\n\nIt can be used on its own in portable Haskell code, or with the monad\nclasses in the @mtl@ or @monads-tf@ packages, which automatically\nlift operations introduced by monad transformers through other\ntransformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.applicativeinbase
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
          ];
        buildable = true;
      };
    };
  }