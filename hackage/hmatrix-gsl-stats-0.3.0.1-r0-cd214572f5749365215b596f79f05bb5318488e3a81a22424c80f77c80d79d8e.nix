{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { openblas = false; };
    package = {
      specVersion = "1.10.1.0";
      identifier = { name = "hmatrix-gsl-stats"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011, 2013, 2015";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hmatrix-gsl-stats";
      url = "";
      synopsis = "GSL Statistics interface";
      description = "Purely functional interface for statistics based on hmatrix and GSL\n\nRelieves the burden of alloc/free routines and is otherwise essentially 1:1\n\nDocumentation can be found at <http://www.gnu.org/software/gsl/manual/>\n\nThe vector type is Data.Vector.Storable from the 'vector' package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          ];
        libs = ((if flags.openblas
          then [
            (pkgs."openblas" or ((hsPkgs.pkgs-errors).sysDepError "openblas"))
            ]
          else [
            (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
            (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
            ]) ++ (pkgs.lib).optionals (system.isFreebsd) [
          (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          (pkgs."gfortran" or ((hsPkgs.pkgs-errors).sysDepError "gfortran"))
          ]) ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }