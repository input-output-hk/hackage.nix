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
    flags = { splitbase = true; base4 = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "fft"; version = "0.1.7.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jed Brown <jed@59A2.org>, Henning Thielemann <fft@henning-thielemann.de>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "Bindings to the FFTW library.";
      description = "Bindings to the FFTW library.\n\nProvides high performance discrete fourier transforms in\narbitrary dimensions.  Include transforms of complex data,\nreal data, and real to real transforms.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."ix-shapable" or (errorHandler.buildDepError "ix-shapable"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        pkgconfig = [
          (pkgconfPkgs."fftw3" or (errorHandler.pkgConfDepError "fftw3"))
          ];
        buildable = true;
        };
      tests = {
        "test-fft" = {
          depends = [
            (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
            (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
            (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }