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
      specVersion = "1.12";
      identifier = { name = "galois-fft"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/galois-fft#readme";
      url = "";
      synopsis = "FFTs over finite fields";
      description = "Finite field polynomial arithmetic based on fast Fourier transforms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."elliptic-curve" or (errorHandler.buildDepError "elliptic-curve"))
          (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
          (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "fft-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."elliptic-curve" or (errorHandler.buildDepError "elliptic-curve"))
            (hsPkgs."galois-fft" or (errorHandler.buildDepError "galois-fft"))
            (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
            (hsPkgs."pairing" or (errorHandler.buildDepError "pairing"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fft-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."elliptic-curve" or (errorHandler.buildDepError "elliptic-curve"))
            (hsPkgs."galois-fft" or (errorHandler.buildDepError "galois-fft"))
            (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
            (hsPkgs."pairing" or (errorHandler.buildDepError "pairing"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }