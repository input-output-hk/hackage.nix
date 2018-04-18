{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "exception-monads-tf";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2010 Harvard University";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~mainland/";
        url = "";
        synopsis = "A monads-tf monad transformer for unchecked extensible\nexceptions.";
        description = "This package provides a monad transformer that allows unchecked\nextensible exceptions to be thrown and caught. Compatible with\nmonads-fd.";
        buildType = "Simple";
      };
      components = {
        exception-monads-tf = {
          depends  = [
            hsPkgs.base
            hsPkgs.monads-tf
            hsPkgs.transformers
          ];
        };
      };
    }