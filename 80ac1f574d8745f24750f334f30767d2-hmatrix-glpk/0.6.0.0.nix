{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hmatrix-glpk";
          version = "0.6.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "https://github.com/albertoruiz/hmatrix";
        url = "";
        synopsis = "Linear Programming based on GLPK";
        description = "Simple interface to linear programming functions provided by GLPK.";
        buildType = "Simple";
      };
      components = {
        hmatrix-glpk = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.containers
          ];
          libs = [ pkgs.glpk ];
        };
      };
    }