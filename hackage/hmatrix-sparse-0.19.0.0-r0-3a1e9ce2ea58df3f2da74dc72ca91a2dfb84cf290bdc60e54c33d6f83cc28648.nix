{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hmatrix-sparse"; version = "0.19.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          ];
        libs = [
          (pkgs."mkl_intel" or ((hsPkgs.pkgs-errors).sysDepError "mkl_intel"))
          (pkgs."mkl_sequential" or ((hsPkgs.pkgs-errors).sysDepError "mkl_sequential"))
          (pkgs."mkl_core" or ((hsPkgs.pkgs-errors).sysDepError "mkl_core"))
          ];
        buildable = true;
        };
      };
    }