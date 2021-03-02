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
      specVersion = "1.0";
      identifier = { name = "fft"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<jed@59A2.org>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "Bindings to the FFTW library.";
      description = "Bindings to the FFTW library.\n\nProvides high performance discrete fourier transforms in\narbitrary dimensions.  Include transforms of complex data,\nreal data, and real to real transforms.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
          ];
        libs = [ (pkgs."fftw3" or (errorHandler.sysDepError "fftw3")) ];
        buildable = true;
        };
      };
    }