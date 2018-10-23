{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "transformers";
        version = "0.4.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "Andy Gill, Ross Paterson";
      homepage = "";
      url = "";
      synopsis = "Concrete functor and monad transformers";
      description = "A portable library of functor and monad transformers, inspired by\nthe paper \\\"Functional Programming with Overloading and Higher-Order\nPolymorphism\\\", by Mark P Jones,\nin /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).\n\nThis package contains:\n\n* the monad transformer class (in \"Control.Monad.Trans.Class\")\nand IO monad class (in \"Control.Monad.IO.Class\")\n\n* concrete functor and monad transformers, each with associated\noperations and functions to lift operations associated with other\ntransformers.\n\nThe package can be used on its own in portable Haskell code, in\nwhich case operations need to be manually lifted through transformer\nstacks (see \"Control.Monad.Trans.Class\" for some examples).\nAlternatively, it can be used with the non-portable monad classes in\nthe @mtl@ or @monads-tf@ packages, which automatically lift operations\nintroduced by monad transformers through other transformers.";
      buildType = "Simple";
    };
    components = {
      "transformers" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }