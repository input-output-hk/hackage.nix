{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { openblas = false; onlygsl = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hsignal"; version = "0.2.7.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011, 2014, 2015";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing and EEG data analysis";
      description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nThe vector type is Data.Vector.Storable from the 'vector' package.\n\nFeature requests, suggestions, and bug fixes welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-gsl"))
          (hsPkgs."hmatrix-gsl-stats" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-gsl-stats"))
          (hsPkgs."hstatistics" or ((hsPkgs.pkgs-errors).buildDepError "hstatistics"))
          ];
        libs = ((((if flags.openblas
          then [
            (pkgs."openblas" or ((hsPkgs.pkgs-errors).sysDepError "openblas"))
            ]
          else [
            (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
            (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
            ]) ++ (pkgs.lib).optional (system.isOsx) (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))) ++ (pkgs.lib).optionals (system.isFreebsd) [
          (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          (pkgs."gfortran" or ((hsPkgs.pkgs-errors).sysDepError "gfortran"))
          (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"))
          ]) ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          (pkgs."gsl-0" or ((hsPkgs.pkgs-errors).sysDepError "gsl-0"))
          ]) ++ (pkgs.lib).optional (flags.onlygsl) (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"));
        pkgconfig = (pkgs.lib).optional (!flags.onlygsl) (pkgconfPkgs."gsl" or ((hsPkgs.pkgs-errors).pkgConfDepError "gsl"));
        buildable = true;
        };
      };
    }