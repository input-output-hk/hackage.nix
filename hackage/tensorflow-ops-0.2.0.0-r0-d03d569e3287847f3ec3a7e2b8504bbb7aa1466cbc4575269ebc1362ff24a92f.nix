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
      specVersion = "1.22";
      identifier = { name = "tensorflow-ops"; version = "0.2.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "Google Inc.";
      maintainer = "tensorflow-haskell@googlegroups.com";
      author = "TensorFlow authors";
      homepage = "https://github.com/tensorflow/haskell#readme";
      url = "";
      synopsis = "Friendly layer around TensorFlow bindings.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."lens-family" or (buildDepError "lens-family"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
          (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
          (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "RegressionTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            ];
          buildable = true;
          };
        "MatrixTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-test" or (buildDepError "tensorflow-test"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "BuildTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "EmbeddingOpsTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-test" or (buildDepError "tensorflow-test"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "ArrayOpsTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "OpsTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "VariableTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "DataFlowOpsTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "GradientTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "MiscTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        "NNTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-test" or (buildDepError "tensorflow-test"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "QueueTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        "TracingTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        "TypesTest" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-core-ops" or (buildDepError "tensorflow-core-ops"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (buildDepError "tensorflow-proto"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "FeedFetchBench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."tensorflow" or (buildDepError "tensorflow"))
            (hsPkgs."tensorflow-ops" or (buildDepError "tensorflow-ops"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }