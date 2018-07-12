{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "transformers";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Concrete monad transformers";
        description = "Haskell 98 part of a monad transformer library, inspired by the paper\n/Functional Programming with Overloading and Higher-Order Polymorphism/,\nby Mark P Jones, in /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).\n\nThis part contains the monad transformer class, the concrete monad\ntransformers, operations and liftings.";
        buildType = "Simple";
      };
      components = {
        "transformers" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }