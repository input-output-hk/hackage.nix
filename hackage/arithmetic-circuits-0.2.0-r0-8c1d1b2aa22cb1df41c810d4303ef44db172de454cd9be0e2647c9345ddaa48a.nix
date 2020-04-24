{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bulletproofs" or ((hsPkgs.pkgs-errors).buildDepError "bulletproofs"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."elliptic-curve" or ((hsPkgs.pkgs-errors).buildDepError "elliptic-curve"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."galois-fft" or ((hsPkgs.pkgs-errors).buildDepError "galois-fft"))
          (hsPkgs."galois-field" or ((hsPkgs.pkgs-errors).buildDepError "galois-field"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."poly" or ((hsPkgs.pkgs-errors).buildDepError "poly"))
          (hsPkgs."process-extras" or ((hsPkgs.pkgs-errors).buildDepError "process-extras"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "circuit-tests" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or ((hsPkgs.pkgs-errors).buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bulletproofs" or ((hsPkgs.pkgs-errors).buildDepError "bulletproofs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."elliptic-curve" or ((hsPkgs.pkgs-errors).buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."galois-fft" or ((hsPkgs.pkgs-errors).buildDepError "galois-fft"))
            (hsPkgs."galois-field" or ((hsPkgs.pkgs-errors).buildDepError "galois-field"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."pairing" or ((hsPkgs.pkgs-errors).buildDepError "pairing"))
            (hsPkgs."poly" or ((hsPkgs.pkgs-errors).buildDepError "poly"))
            (hsPkgs."process-extras" or ((hsPkgs.pkgs-errors).buildDepError "process-extras"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-discover" or ((hsPkgs.pkgs-errors).buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        "readme-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or ((hsPkgs.pkgs-errors).buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bulletproofs" or ((hsPkgs.pkgs-errors).buildDepError "bulletproofs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."elliptic-curve" or ((hsPkgs.pkgs-errors).buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."galois-fft" or ((hsPkgs.pkgs-errors).buildDepError "galois-fft"))
            (hsPkgs."galois-field" or ((hsPkgs.pkgs-errors).buildDepError "galois-field"))
            (hsPkgs."markdown-unlit" or ((hsPkgs.pkgs-errors).buildDepError "markdown-unlit"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."pairing" or ((hsPkgs.pkgs-errors).buildDepError "pairing"))
            (hsPkgs."poly" or ((hsPkgs.pkgs-errors).buildDepError "poly"))
            (hsPkgs."process-extras" or ((hsPkgs.pkgs-errors).buildDepError "process-extras"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "circuit-benchmarks" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or ((hsPkgs.pkgs-errors).buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bulletproofs" or ((hsPkgs.pkgs-errors).buildDepError "bulletproofs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."elliptic-curve" or ((hsPkgs.pkgs-errors).buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."galois-fft" or ((hsPkgs.pkgs-errors).buildDepError "galois-fft"))
            (hsPkgs."galois-field" or ((hsPkgs.pkgs-errors).buildDepError "galois-field"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."pairing" or ((hsPkgs.pkgs-errors).buildDepError "pairing"))
            (hsPkgs."poly" or ((hsPkgs.pkgs-errors).buildDepError "poly"))
            (hsPkgs."process-extras" or ((hsPkgs.pkgs-errors).buildDepError "process-extras"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      };
    }