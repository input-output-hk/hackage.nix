{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hmatrix-banded";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/hmatrix-banded/";
        url = "";
        synopsis = "HMatrix interface to LAPACK functions for banded matrices";
        description = "HMatrix interface to LAPACK functions for banded matrices";
        buildType = "Simple";
      };
      components = {
        hmatrix-banded = {
          depends  = [
            hsPkgs.hmatrix
            hsPkgs.transformers
            hsPkgs.base
          ];
          libs = [ pkgs.lapack ];
        };
      };
    }