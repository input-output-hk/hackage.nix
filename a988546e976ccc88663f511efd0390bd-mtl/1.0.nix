{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "mtl";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Monad transformer library";
        description = "A monad transformer library, inspired by the paper \"Functional\nProgramming with Overloading and Higher-Order Polymorphism\",\nby Mark P Jones (<http://www.cse.ogi.edu/~mpj/>), Advanced School\nof Functional Programming, 1995.";
        buildType = "Custom";
      };
      components = {
        mtl = {
          depends  = [ hsPkgs.base ];
        };
      };
    }