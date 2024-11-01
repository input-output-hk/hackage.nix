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
      identifier = { name = "fftwRaw"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/haskell-fftw-simple";
      url = "";
      synopsis = "Low level bindings to FFTW.";
      description = "Yet another set of Haskell bindings to <http://www.fftw.org/ FFTW>, the Fastest Fourier Transform in the West.\n\nThese are low level bindings with some type safety for a small subset of FFTW's functionality. Raise an Issue on Github if you need something I haven't implemented.\n\nUnlike the <https://hackage.haskell.org/package/fft fft> package, this package provides low level manipulation of FFTW plans (such as `fftw_plan_dft_1d`).\n\nUnlike the <https://hackage.haskell.org/package/vector-fftw vector-fftw> package, this package is based on pointers instead of the Vector datatype and it avoids copying the input arrays by assuming that the pointers are aligned as FFTW expects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."fftw3" or (errorHandler.sysDepError "fftw3")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }