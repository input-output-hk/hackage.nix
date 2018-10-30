{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { mkl = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsignal";
        version = "0.1.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing and EEG data analysis";
      description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nWhen hmatrix is installed with -fvector, the vector type is Data.Vector.Storable\nfrom the vector package.\n\nFeature requests, suggestions, and bug fixes welcome.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.storable-complex)
          (hsPkgs.binary)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl-stats)
          (hsPkgs.hstatistics)
        ];
        libs = (pkgs.lib.optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."gsl")
            (pkgs."mkl_lapack")
            (pkgs."mkl_intel_lp64")
            (pkgs."mkl_sequential")
            (pkgs."mkl_core")
          ]
          else [
            (pkgs."gsl")
            (pkgs."mkl_lapack")
            (pkgs."mkl_intel")
            (pkgs."mkl_sequential")
            (pkgs."mkl_core")
          ]) ++ pkgs.lib.optional (system.isOsx) (pkgs."gsl")) ++ pkgs.lib.optionals (system.isWindows) [
          (pkgs."gsl-0")
          (pkgs."blas")
          (pkgs."lapack")
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate");
      };
    };
  }