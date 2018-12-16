{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      applicativeinbase = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "transformers";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Concrete monad transformers";
      description = "Haskell 98 part of a monad transformer library, inspired by the paper\n/Functional Programming with Overloading and Higher-Order Polymorphism/,\nby Mark P Jones, in /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).\n\nThis part contains the monad transformer class, the concrete monad\ntransformers, operations and liftings.  It can be used on its own\nin Haskell 98 code, or with the monad classes in the packages\n@monads-fd@ or @monads-tf@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.applicativeinbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.special-functors)
          ];
      };
    };
  }