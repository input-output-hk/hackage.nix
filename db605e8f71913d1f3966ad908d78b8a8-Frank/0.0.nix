{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Frank";
          version = "0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "conor@strictlypositive.org";
        author = "Conor McBride";
        homepage = "http://personal.cis.strath.ac.uk/~conor/pub/Frank/";
        url = "";
        synopsis = "An experimental programming language with typed algebraic effects";
        description = "An experimental programming language with typed algebraic effects";
        buildType = "Simple";
      };
      components = {
        exes = {
          frank = {
            depends  = [
              hsPkgs.base
              hsPkgs.void
              hsPkgs.newtype
              hsPkgs.mtl
              hsPkgs.she
            ];
          };
        };
      };
    }