{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      openblas = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsignal";
        version = "0.2.7";
      };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011, 2014, 2105";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing and EEG data analysis";
      description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nThe vector type is Data.Vector.Storable from the 'vector' package.\n\nFeature requests, suggestions, and bug fixes welcome.";
      buildType = "Simple";
    };
    components = {
      "hsignal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.storable-complex)
          (hsPkgs.binary)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
          (hsPkgs.hmatrix-gsl-stats)
          (hsPkgs.hstatistics)
        ];
        libs = ((if _flags.openblas
          then [ (pkgs."openblas") ]
          else [
            (pkgs."blas")
            (pkgs."lapack")
          ]) ++ pkgs.lib.optionals (system.isFreebsd) [
          (pkgs."blas")
          (pkgs."lapack")
          (pkgs."gfortran")
        ]) ++ pkgs.lib.optionals (system.isWindows) [
          (pkgs."blas")
          (pkgs."lapack")
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate");
      };
    };
  }