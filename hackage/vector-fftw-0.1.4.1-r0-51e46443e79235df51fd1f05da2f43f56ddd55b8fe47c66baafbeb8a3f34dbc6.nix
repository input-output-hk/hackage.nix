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
      identifier = { name = "vector-fftw"; version = "0.1.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Judah Jacobson, 2010";
      maintainer = "Ben Gamari <ben@smart-cactus.org>";
      author = "Judah Jacobson";
      homepage = "http://hackage.haskell.org/package/vector-fftw";
      url = "";
      synopsis = "A binding to the fftw library for one-dimensional vectors.";
      description = "This package provides bindings to the fftw library for one-dimensional vectors.\nIt provides both high-level functions and more low-level manipulation of fftw plans.\n\nWe provide three different modules which wrap @fftw@'s operations:\n\n- \"Numeric.FFT.Vector.Unnormalized\" contains the raw transforms;\n\n- \"Numeric.FFT.Vector.Invertible\" scales the backwards transforms to be true inverses;\n\n- \"Numeric.FFT.Vector.Unitary\" additionally scales all transforms to preserve the L2 (sum-of-squares) norm of the\ninput.\n\nIn addition, we provide @.Multi@ modules for each of these providing multi-dimensional\ntransforms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
        ];
        libs = if system.isWindows
          then [ (pkgs."fftw3-3" or (errorHandler.sysDepError "fftw3-3")) ]
          else [ (pkgs."fftw3" or (errorHandler.sysDepError "fftw3")) ];
        buildable = true;
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
          ];
          buildable = true;
        };
      };
    };
  }