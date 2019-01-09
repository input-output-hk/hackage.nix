{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsignal"; version = "0.1.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing";
      description = "Purely functional interface to signal processing based on hmatrix\nprovides data types for manipulating EEG data,\nincluding reading from BDF";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.storable-complex)
          (hsPkgs.ghc-binary)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl-stats)
          (hsPkgs.hstatistics)
          ];
        libs = (pkgs.lib).optional (system.isOsx) (pkgs."gsl");
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate");
        };
      };
    }