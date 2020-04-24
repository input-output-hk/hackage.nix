{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "accelerate-cufft"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-cufft/";
      url = "";
      synopsis = "Accelerate frontend to the CUFFT library (Fourier transform)";
      description = "An interface for the @accelerate@ framework\nto the Fourier Transform library @cufft@\nprovided by Nvidia for their CUDA enabled graphic cards.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cufft" or ((hsPkgs.pkgs-errors).buildDepError "cufft"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."accelerate-fourier" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-fourier"))
          (hsPkgs."accelerate-utility" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-utility"))
          (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "accelerate-cufft-demo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-cufft" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "accelerate-cufft-demo-merged" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."cufft" or ((hsPkgs.pkgs-errors).buildDepError "cufft"))
            (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "accelerate-cufft-demo-separate" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-llvm-ptx" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm-ptx"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."cufft" or ((hsPkgs.pkgs-errors).buildDepError "cufft"))
            (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "cufft-demo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."cufft" or ((hsPkgs.pkgs-errors).buildDepError "cufft"))
            (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }