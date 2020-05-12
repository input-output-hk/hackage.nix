{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
      identifier = { name = "gsl-random"; version = "0.1.1"; };
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
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = ((((pkgs.lib).optionals (flags.atlas) [
          (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
          (pkgs."cblas" or (errorHandler.sysDepError "cblas"))
          (pkgs."atlas" or (errorHandler.sysDepError "atlas"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          ] ++ (pkgs.lib).optionals (flags.gsl) [
          (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
          (pkgs."gslcblas" or (errorHandler.sysDepError "gslcblas"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          ]) ++ (pkgs.lib).optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
            (pkgs."mkl_lapack" or (errorHandler.sysDepError "mkl_lapack"))
            (pkgs."mkl_intel_lp64" or (errorHandler.sysDepError "mkl_intel_lp64"))
            (pkgs."mkl_sequential" or (errorHandler.sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (errorHandler.sysDepError "mkl_core"))
            (pkgs."m" or (errorHandler.sysDepError "m"))
            ]
          else [
            (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
            (pkgs."mkl_lapack" or (errorHandler.sysDepError "mkl_lapack"))
            (pkgs."mkl_intel" or (errorHandler.sysDepError "mkl_intel"))
            (pkgs."mkl_sequential" or (errorHandler.sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (errorHandler.sysDepError "mkl_core"))
            (pkgs."m" or (errorHandler.sysDepError "m"))
            ])) ++ (pkgs.lib).optionals (flags.veclib) [
          (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
          (pkgs."cblas" or (errorHandler.sysDepError "cblas"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          ]) ++ (pkgs.lib).optionals (!flags.atlas && !flags.gsl && !flags.mkl && !flags.veclib && !flags.custom) [
          (pkgs."gsl" or (errorHandler.sysDepError "gsl"))
          (pkgs."gslcblas" or (errorHandler.sysDepError "gslcblas"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          ];
        buildable = true;
        };
      };
    }