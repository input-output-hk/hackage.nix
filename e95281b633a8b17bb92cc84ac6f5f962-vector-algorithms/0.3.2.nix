{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "vector-algorithms";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Dan Doel <dan.doel@gmail.com>";
        author = "Dan Doel";
        homepage = "http://code.haskell.org/~dolio/";
        url = "";
        synopsis = "Efficient algorithms for vector arrays";
        description = "Efficient algorithms for vector arrays";
        buildType = "Simple";
      };
      components = {
        vector-algorithms = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
      };
    }