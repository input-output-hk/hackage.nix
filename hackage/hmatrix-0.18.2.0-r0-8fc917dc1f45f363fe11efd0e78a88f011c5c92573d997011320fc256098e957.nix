{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { openblas = false; disable-default-paths = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix"; version = "0.18.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alberto Ruiz";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Numeric Linear Algebra";
      description = "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.\n\nStandard interface: \"Numeric.LinearAlgebra\".\n\nSafer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".\n\nCode examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = (((pkgs.lib).optionals (system.isOsx) (if flags.openblas
          then [
            (pkgs."openblas" or ((hsPkgs.pkgs-errors).sysDepError "openblas"))
            ]
          else [
            (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
            (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
            ]) ++ (pkgs.lib).optionals (system.isFreebsd) ([
          (pkgs."gfortran" or ((hsPkgs.pkgs-errors).sysDepError "gfortran"))
          ] ++ (if flags.openblas
          then [
            (pkgs."openblas" or ((hsPkgs.pkgs-errors).sysDepError "openblas"))
            ]
          else [
            (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
            (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
            ]))) ++ (pkgs.lib).optionals (system.isWindows) (if flags.openblas
          then [
            (pkgs."libopenblas" or ((hsPkgs.pkgs-errors).sysDepError "libopenblas"))
            (pkgs."libgcc_s_seh-1" or ((hsPkgs.pkgs-errors).sysDepError "libgcc_s_seh-1"))
            (pkgs."libgfortran" or ((hsPkgs.pkgs-errors).sysDepError "libgfortran"))
            (pkgs."libquadmath-0" or ((hsPkgs.pkgs-errors).sysDepError "libquadmath-0"))
            ]
          else [
            (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
            (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
            ])) ++ (pkgs.lib).optionals (system.isLinux) (if flags.openblas
          then [
            (pkgs."openblas" or ((hsPkgs.pkgs-errors).sysDepError "openblas"))
            ]
          else [
            (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
            (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
            ]);
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }