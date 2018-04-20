{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "projection";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paba@di.ku.dk";
        author = "Patrick Bahr";
        homepage = "";
        url = "";
        synopsis = "Projection function for arbitrarily nested binary product types.";
        description = "This package implements a projection function for arbitrarily nested\nbinary product types. The implementation is based on closed type\nfamilies and follows the approach described in the paper\n/Composing and Decomposing Data Types/ (Workshop on Generic Programming, 2014,\nto appear).";
        buildType = "Simple";
      };
      components = {
        projection = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }