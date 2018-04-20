{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ref-tf";
          version = "0.3.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2014 Geoffrey Mainland";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
        homepage = "http://www.cs.drexel.edu/~mainland/";
        url = "";
        synopsis = "A type class for monads with references using type families.";
        description = "Contains a 'MonadRef' type class that abstracts over the\ndetails of manipulating references, allowing one to write code\nthat can operate in either the ST monad or the IO monad.";
        buildType = "Simple";
      };
      components = {
        ref-tf = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
      };
    }