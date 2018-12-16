{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "tensorflow-ops";
        version = "0.2.0.0";
      };
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
          (hsPkgs.proto-lens)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.fgl)
          (hsPkgs.mtl)
          (hsPkgs.data-default)
          (hsPkgs.lens-family)
          (hsPkgs.containers)
          (hsPkgs.tensorflow)
          (hsPkgs.tensorflow-proto)
          (hsPkgs.tensorflow-core-ops)
          (hsPkgs.text)
        ];
      };
      tests = {
        "RegressionTest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.lens-family)
            (hsPkgs.transformers)
            (hsPkgs.random)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
          ];
        };
        "MatrixTest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.random)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-test)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "BuildTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "EmbeddingOpsTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-test)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "ArrayOpsTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "OpsTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.temporary)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "VariableTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "DataFlowOpsTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector)
          ];
        };
        "GradientTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.random)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "MiscTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.transformers)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "NNTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-test)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector)
          ];
        };
        "QueueTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "TracingTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.lens-family)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "TypesTest" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-core-ops)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.transformers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "FeedFetchBench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }