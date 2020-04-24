{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { openblas = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hmatrix-morpheus"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Alexander Ignatyev";
      maintainer = "ignatyev.alexander@gmail.com";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/aligusnet/morpheus/tree/master/hmatrix-morpheus";
      url = "";
      synopsis = "Low-level machine learning auxiliary functions.";
      description = "Purely functional interface to morpheus based on hmatrix.\nMorpheus library contains a bunch of cache line aware numerical algorithms\nsuitable for using as a low-level primitives to build machine learning applications.\n\nExamples are in \"Numeric.Morpheus\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux) (if flags.openblas
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
      tests = {
        "hmatrix-morpheus-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix-morpheus" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-morpheus"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "hmatrix-morpheus-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix-morpheus" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-morpheus"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }