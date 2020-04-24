{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "accelerate-fourier-benchmark"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/accelerate-fourier-benchmark/";
      url = "";
      synopsis = "Compare different implementations of the Fast Fourier Transform";
      description = "Compare\n\n* @accelerate-fourier@\n\n* @accelerate-cufft@\n\n* @accelerate-fftw@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "accelerate-fourier-benchmark" = {
          depends = [
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."accelerate-cufft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-fftw" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fftw"))
            (hsPkgs."accelerate-fourier" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fourier"))
            (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }