{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsignal";
        version = "0.1.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing and EEG data analysis";
      description = "Purely functional interface to signal processing based on hmatrix\n\nProvides data types for manipulating EEG data, including reading from BDF data format files\n\nWhen hmatrix is installed with -fvector, the vector type is Data.Vector.Storable\nfrom the vector package.\n\nFeature requests, suggestions, and bug fixes welcome.";
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
          (hsPkgs.binary)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl-stats)
          (hsPkgs.hstatistics)
        ];
        libs = pkgs.lib.optional (system.isOsx) (pkgs."gsl");
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate");
      };
    };
  }