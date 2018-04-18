{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      atlas = false;
      gsl = false;
      mkl = false;
      veclib = false;
      custom = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "gsl-random";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
        maintainer = "Patrick Perry <patperry@stanford.edu>";
        author = "Patrick Perry";
        homepage = "http://stat.stanford.edu/~patperry/code/gsl-random";
        url = "";
        synopsis = "Bindings the the GSL random number generation facilities.";
        description = "Bindings to the GNU Scientific Library random number generators and random\ndistributions.\n";
        buildType = "Simple";
      };
      components = {
        gsl-random = {
          depends  = [ hsPkgs.base ];
          libs = (((optionals _flags.atlas [
            pkgs.gsl
            pkgs.cblas
            pkgs.atlas
            pkgs.m
          ] ++ optionals _flags.gsl [
            pkgs.gsl
            pkgs.gslcblas
            pkgs.m
          ]) ++ (if _flags.mkl && system.isX86_64
            then [
              pkgs.gsl
              pkgs.mkl_lapack
              pkgs.mkl_intel_lp64
              pkgs.mkl_sequential
              pkgs.mkl_core
              pkgs.m
            ]
            else [
              pkgs.gsl
              pkgs.mkl_lapack
              pkgs.mkl_intel
              pkgs.mkl_sequential
              pkgs.mkl_core
              pkgs.m
            ])) ++ optionals _flags.veclib [
            pkgs.gsl
            pkgs.cblas
            pkgs.m
          ]) ++ optionals (!_flags.atlas && !_flags.gsl && !_flags.mkl && !_flags.veclib && !_flags.custom) [
            pkgs.gsl
            pkgs.gslcblas
            pkgs.m
          ];
        };
      };
    }