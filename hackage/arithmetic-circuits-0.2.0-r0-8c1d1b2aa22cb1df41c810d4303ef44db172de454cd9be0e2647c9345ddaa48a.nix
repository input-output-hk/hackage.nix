let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bulletproofs" or (buildDepError "bulletproofs"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."elliptic-curve" or (buildDepError "elliptic-curve"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."galois-fft" or (buildDepError "galois-fft"))
          (hsPkgs."galois-field" or (buildDepError "galois-field"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."poly" or (buildDepError "poly"))
          (hsPkgs."process-extras" or (buildDepError "process-extras"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."semirings" or (buildDepError "semirings"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "circuit-tests" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or (buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bulletproofs" or (buildDepError "bulletproofs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."elliptic-curve" or (buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."galois-fft" or (buildDepError "galois-fft"))
            (hsPkgs."galois-field" or (buildDepError "galois-field"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."pairing" or (buildDepError "pairing"))
            (hsPkgs."poly" or (buildDepError "poly"))
            (hsPkgs."process-extras" or (buildDepError "process-extras"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."semirings" or (buildDepError "semirings"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        "readme-test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or (buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bulletproofs" or (buildDepError "bulletproofs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."elliptic-curve" or (buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."galois-fft" or (buildDepError "galois-fft"))
            (hsPkgs."galois-field" or (buildDepError "galois-field"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."pairing" or (buildDepError "pairing"))
            (hsPkgs."poly" or (buildDepError "poly"))
            (hsPkgs."process-extras" or (buildDepError "process-extras"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."semirings" or (buildDepError "semirings"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "circuit-benchmarks" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."arithmetic-circuits" or (buildDepError "arithmetic-circuits"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bulletproofs" or (buildDepError "bulletproofs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."elliptic-curve" or (buildDepError "elliptic-curve"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."galois-fft" or (buildDepError "galois-fft"))
            (hsPkgs."galois-field" or (buildDepError "galois-field"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."pairing" or (buildDepError "pairing"))
            (hsPkgs."poly" or (buildDepError "poly"))
            (hsPkgs."process-extras" or (buildDepError "process-extras"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."semirings" or (buildDepError "semirings"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      };
    }