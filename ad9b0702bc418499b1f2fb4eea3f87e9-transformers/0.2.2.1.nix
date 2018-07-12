{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      applicativeinbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.5.5";
        identifier = {
          name = "transformers";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
        author = "Andy Gill, Ross Paterson";
        homepage = "";
        url = "";
        synopsis = "Concrete functor and monad transformers";
        description = "Haskell 98 part of a monad transformer library, inspired by the paper\n\\\"Functional Programming with Overloading and Higher-Order Polymorphism\\\",\nby Mark P Jones, in /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).\n\nThis part contains the monad transformer class, the concrete monad\ntransformers, operations and liftings.  It can be used on its own\nin Haskell 98 code, or with the monad classes in the @monads-fd@ or\n@monads-tf@ packages, which automatically lift operations introduced\nby monad transformers through other transformers.";
        buildType = "Simple";
      };
      components = {
        "transformers" = {
          depends  = if _flags.applicativeinbase
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.special-functors
            ];
        };
      };
    }