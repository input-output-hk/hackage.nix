{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hmatrix-sparse";
          version = "0.19.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "https://github.com/albertoruiz/hmatrix";
        url = "";
        synopsis = "Sparse linear solver";
        description = "Interface to MKL direct sparse linear solver";
        buildType = "Simple";
      };
      components = {
        "hmatrix-sparse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
          ];
          libs = [
            pkgs.mkl_intel
            pkgs.mkl_sequential
            pkgs.mkl_core
          ];
        };
      };
    }