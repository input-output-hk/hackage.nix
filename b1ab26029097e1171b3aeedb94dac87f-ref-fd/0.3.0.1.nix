{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ref-fd";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2011 Harvard University";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~mainland/";
        url = "";
        synopsis = "A type class for monads with references using functional\ndependencies.";
        description = "Contains a 'MonadRef' type class that abstracts over the\ndetails of manipulating references, allowing one to write code\nthat can operate in either the ST monad or the IO monad.";
        buildType = "Simple";
      };
      components = {
        ref-fd = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
      };
    }