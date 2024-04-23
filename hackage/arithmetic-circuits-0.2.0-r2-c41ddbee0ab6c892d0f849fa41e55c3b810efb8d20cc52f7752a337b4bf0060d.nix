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
      identifier = { name = "arithmetic-circuits"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/arithmetic-circuits#readme";
      url = "";
      synopsis = "Arithmetic circuits for zkSNARKs";
      description = "Arithmetic circuits for zkSNARKs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bulletproofs" or (errorHandler.buildDepError "bulletproofs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."elliptic-curve" or (errorHandler.buildDepError "elliptic-curve"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."galois-fft" or (errorHandler.buildDepError "galois-fft"))
          (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
        ];
        buildable = true;
      };
      tests = {
        "circuit-tests" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or (errorHandler.buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bulletproofs" or (errorHandler.buildDepError "bulletproofs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."elliptic-curve" or (errorHandler.buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."galois-fft" or (errorHandler.buildDepError "galois-fft"))
            (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."pairing" or (errorHandler.buildDepError "pairing"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
          buildable = true;
        };
        "readme-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or (errorHandler.buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bulletproofs" or (errorHandler.buildDepError "bulletproofs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."elliptic-curve" or (errorHandler.buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."galois-fft" or (errorHandler.buildDepError "galois-fft"))
            (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."pairing" or (errorHandler.buildDepError "pairing"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "circuit-benchmarks" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or (errorHandler.buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bulletproofs" or (errorHandler.buildDepError "bulletproofs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."elliptic-curve" or (errorHandler.buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."galois-fft" or (errorHandler.buildDepError "galois-fft"))
            (hsPkgs."galois-field" or (errorHandler.buildDepError "galois-field"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."pairing" or (errorHandler.buildDepError "pairing"))
            (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
            (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
          buildable = true;
        };
      };
    };
  }