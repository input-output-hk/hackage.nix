{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "hquantlib";
          version = "0.0.1.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Pavel Ryzhov <pavel.ryzhov@gmail.com>";
        author = "Pavel Ryzhov";
        homepage = "http://code.google.com/p/hquantlib/";
        url = "";
        synopsis = "HQuantLib is a port of essencial parts of QuantLib to Haskell";
        description = "HQuantLib is intended to be a functional style port of QuantLib (http://quantlib.org)";
        buildType = "Simple";
      };
      components = {
        "hquantlib" = {
          depends  = [
            hsPkgs.haskell2010
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.hmatrix
            hsPkgs.hmatrix-special
            hsPkgs.gsl-random
          ];
        };
      };
    }