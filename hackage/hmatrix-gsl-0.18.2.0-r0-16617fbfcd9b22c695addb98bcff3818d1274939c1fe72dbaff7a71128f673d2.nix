{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { onlygsl = false; disable-default-paths = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix-gsl"; version = "0.18.2.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        libs = (((pkgs.lib).optional (system.isOsx) (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl")) ++ (pkgs.lib).optional (system.isFreebsd) (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))) ++ (pkgs.lib).optional (system.isWindows) (pkgs."gsl-0" or ((hsPkgs.pkgs-errors).sysDepError "gsl-0"))) ++ (pkgs.lib).optional (flags.onlygsl) (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"));
        pkgconfig = (pkgs.lib).optional (!flags.onlygsl) (pkgconfPkgs."gsl" or ((hsPkgs.pkgs-errors).pkgConfDepError "gsl"));
        buildable = true;
        };
      };
    }