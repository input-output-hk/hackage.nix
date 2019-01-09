{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hsignal"; version = "0.1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Alexander Vivian Hugh McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing";
      description = "Purely functional interface to signal processing based on hmatrix";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.storable-complex)
          (hsPkgs.haskell98)
          (hsPkgs.hmatrix)
          ];
        libs = (pkgs.lib).optional (system.isOsx) (pkgs."gsl");
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate");
        };
      };
    }