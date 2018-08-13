{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsignal";
        version = "0.1.2.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing";
      description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nWhen hmatrix is installed with -fvector, the vector type is Data.Vector.Storable\nfrom the vector package.";
      buildType = "Custom";
    };
    components = {
      "hsignal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.storable-complex)
          (hsPkgs.ghc-binary)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl-stats)
          (hsPkgs.hstatistics)
        ];
        libs = pkgs.lib.optional (system.isOsx) (pkgs."gsl");
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate");
      };
    };
  }