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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vocoder"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "tilk@tilk.eu";
      author = "Marek Materzok";
      homepage = "https://github.com/tilk/vocoder";
      url = "";
      synopsis = "Phase vocoder";
      description = "This package is an implementation of phase vocoder frequency domain\nprocessing algorithms. It has minimal dependencies on external\nlibraries. It can be used directly, but for most uses it's more\nconvenient to use a streaming or FRP library wrapper.\nPackages vocoder-conduit and vocoder-dunai are provided for this\npurpose.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }