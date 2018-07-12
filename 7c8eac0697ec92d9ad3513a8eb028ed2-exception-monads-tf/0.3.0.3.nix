{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exception-monads-tf";
          version = "0.3.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2010 Harvard University\n(c) 2011-2012 Geoffrey Mainland";
        maintainer = "Geoffrey Mainland <mainland@cs.drexel.edu>";
        author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
        homepage = "http://www.cs.drexel.edu/~mainland/";
        url = "";
        synopsis = "Exception monad transformer instances for monads-tf classes.";
        description = "This package provides exception monad transformer instances for\nthe classes defined by monads-tf.";
        buildType = "Simple";
      };
      components = {
        "exception-monads-tf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.exception-transformers
            hsPkgs.monads-tf
            hsPkgs.transformers
          ];
        };
      };
    }