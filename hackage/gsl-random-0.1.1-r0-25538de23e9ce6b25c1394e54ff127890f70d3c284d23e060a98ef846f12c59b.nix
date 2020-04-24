{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = ((((pkgs.lib).optionals (flags.atlas) [
          (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
          (pkgs."cblas" or ((hsPkgs.pkgs-errors).sysDepError "cblas"))
          (pkgs."atlas" or ((hsPkgs.pkgs-errors).sysDepError "atlas"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          ] ++ (pkgs.lib).optionals (flags.gsl) [
          (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
          (pkgs."gslcblas" or ((hsPkgs.pkgs-errors).sysDepError "gslcblas"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          ]) ++ (pkgs.lib).optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
            (pkgs."mkl_lapack" or ((hsPkgs.pkgs-errors).sysDepError "mkl_lapack"))
            (pkgs."mkl_intel_lp64" or ((hsPkgs.pkgs-errors).sysDepError "mkl_intel_lp64"))
            (pkgs."mkl_sequential" or ((hsPkgs.pkgs-errors).sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or ((hsPkgs.pkgs-errors).sysDepError "mkl_core"))
            (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
            ]
          else [
            (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
            (pkgs."mkl_lapack" or ((hsPkgs.pkgs-errors).sysDepError "mkl_lapack"))
            (pkgs."mkl_intel" or ((hsPkgs.pkgs-errors).sysDepError "mkl_intel"))
            (pkgs."mkl_sequential" or ((hsPkgs.pkgs-errors).sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or ((hsPkgs.pkgs-errors).sysDepError "mkl_core"))
            (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
            ])) ++ (pkgs.lib).optionals (flags.veclib) [
          (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
          (pkgs."cblas" or ((hsPkgs.pkgs-errors).sysDepError "cblas"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          ]) ++ (pkgs.lib).optionals (!flags.atlas && !flags.gsl && !flags.mkl && !flags.veclib && !flags.custom) [
          (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
          (pkgs."gslcblas" or ((hsPkgs.pkgs-errors).sysDepError "gslcblas"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          ];
        buildable = true;
        };
      };
    }