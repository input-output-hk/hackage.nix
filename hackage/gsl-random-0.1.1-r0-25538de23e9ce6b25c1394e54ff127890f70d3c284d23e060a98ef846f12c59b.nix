{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      atlas = false;
      gsl = false;
      mkl = false;
      veclib = false;
      custom = false;
    };
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
      "gsl-random" = {
        depends  = [ (hsPkgs.base) ];
        libs = (((pkgs.lib.optionals (flags.atlas) [
          (pkgs."gsl")
          (pkgs."cblas")
          (pkgs."atlas")
          (pkgs."m")
        ] ++ pkgs.lib.optionals (flags.gsl) [
          (pkgs."gsl")
          (pkgs."gslcblas")
          (pkgs."m")
        ]) ++ pkgs.lib.optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."gsl")
            (pkgs."mkl_lapack")
            (pkgs."mkl_intel_lp64")
            (pkgs."mkl_sequential")
            (pkgs."mkl_core")
            (pkgs."m")
          ]
          else [
            (pkgs."gsl")
            (pkgs."mkl_lapack")
            (pkgs."mkl_intel")
            (pkgs."mkl_sequential")
            (pkgs."mkl_core")
            (pkgs."m")
          ])) ++ pkgs.lib.optionals (flags.veclib) [
          (pkgs."gsl")
          (pkgs."cblas")
          (pkgs."m")
        ]) ++ pkgs.lib.optionals (!flags.atlas && !flags.gsl && !flags.mkl && !flags.veclib && !flags.custom) [
          (pkgs."gsl")
          (pkgs."gslcblas")
          (pkgs."m")
        ];
      };
    };
  }