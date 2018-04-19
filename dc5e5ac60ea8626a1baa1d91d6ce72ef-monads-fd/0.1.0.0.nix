{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "monads-fd";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Monad classes, using functional dependencies";
        description = "Monad classes using functional dependencies, with instances\nfor various monad transformers, inspired by the paper\n/Functional Programming with Overloading and Higher-Order Polymorphism/,\nby Mark P Jones, in /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).\n\nThis package is almost a compatible replacement for the @mtl@ package.";
        buildType = "Simple";
      };
      components = {
        monads-fd = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }