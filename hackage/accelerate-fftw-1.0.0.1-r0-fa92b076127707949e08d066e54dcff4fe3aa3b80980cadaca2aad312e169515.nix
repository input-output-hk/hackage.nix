{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "accelerate-fftw"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-fftw/";
      url = "";
      synopsis = "Accelerate frontend to the FFTW library (Fourier transform)";
      description = "An interface to the Fastest Fourier Transform in the West (FFTW)\nfor the @accelerate@ framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
          (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }