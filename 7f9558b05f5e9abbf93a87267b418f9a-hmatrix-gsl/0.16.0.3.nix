{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      onlygsl = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmatrix-gsl";
          version = "0.16.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "https://github.com/albertoruiz/hmatrix";
        url = "";
        synopsis = "Numerical computation";
        description = "Purely functional interface to selected numerical computations,\ninternally implemented using GSL.";
        buildType = "Simple";
      };
      components = {
        "hmatrix-gsl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.array
            hsPkgs.vector
            hsPkgs.process
            hsPkgs.random
          ];
          libs = ((pkgs.lib.optional system.isOsx pkgs.gsl ++ pkgs.lib.optional system.isFreebsd pkgs.gsl) ++ pkgs.lib.optional system.isWindows pkgs.gsl-0) ++ pkgs.lib.optional _flags.onlygsl pkgs.gsl;
          frameworks = pkgs.lib.optional system.isOsx pkgs.Accelerate;
          pkgconfig = pkgs.lib.optional (!_flags.onlygsl) pkgconfPkgs.gsl;
        };
      };
    }