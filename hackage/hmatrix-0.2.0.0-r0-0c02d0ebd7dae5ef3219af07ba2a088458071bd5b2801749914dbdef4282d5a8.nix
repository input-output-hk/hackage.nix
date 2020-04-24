{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmatrix"; version = "0.2.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://alberrto.googlepages.com/gslhaskell";
      url = "";
      synopsis = "Linear algebra and numerical computations";
      description = "A purely functional interface to basic linear algebra computations\nand other numerical routines, internally implemented using\nGSL, BLAS and LAPACK.\n\nMore information: <http://alberrto.googlepages.com/gslhaskell>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        libs = [
          (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
          (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          ];
        buildable = true;
        };
      };
    }