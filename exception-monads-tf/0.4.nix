{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exception-monads-tf";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2010 Harvard University\n(c) 2011-2014 Geoffrey Mainland";
        maintainer = "Geoffrey Mainland <mainland@cs.drexel.edu>";
        author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
        homepage = "";
        url = "";
        synopsis = "Exception monad transformer instances for monads-tf classes.";
        description = "This package provides exception monad transformer instances for\nthe classes defined by monads-tf.";
        buildType = "Simple";
      };
      components = {
        exception-monads-tf = {
          depends  = [
            hsPkgs.base
            hsPkgs.exception-transformers
            hsPkgs.monads-tf
            hsPkgs.transformers
          ];
        };
      };
    }