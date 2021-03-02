{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "accelerate-cufft"; version = "0.0.0.1"; };
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
          (hsPkgs."cufft" or (errorHandler.buildDepError "cufft"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          (hsPkgs."accelerate-fourier" or (errorHandler.buildDepError "accelerate-fourier"))
          (hsPkgs."accelerate-utility" or (errorHandler.buildDepError "accelerate-utility"))
          (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "accelerate-cufft-demo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-cufft" or (errorHandler.buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "accelerate-cufft-demo-merged" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."cufft" or (errorHandler.buildDepError "cufft"))
            (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "accelerate-cufft-demo-separate" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."cufft" or (errorHandler.buildDepError "cufft"))
            (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "cufft-demo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."cufft" or (errorHandler.buildDepError "cufft"))
            (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }