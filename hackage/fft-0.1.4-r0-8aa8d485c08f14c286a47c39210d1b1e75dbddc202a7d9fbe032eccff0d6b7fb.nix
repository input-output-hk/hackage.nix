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
      specVersion = "1.2";
      identifier = { name = "fft"; version = "0.1.4"; };
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
        depends = (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
            (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
            (hsPkgs."ix-shapable" or (errorHandler.buildDepError "ix-shapable"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
            (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
            (hsPkgs."ix-shapable" or (errorHandler.buildDepError "ix-shapable"))
            ]) ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        libs = [ (pkgs."fftw3" or (errorHandler.sysDepError "fftw3")) ];
        buildable = true;
        };
      };
    }