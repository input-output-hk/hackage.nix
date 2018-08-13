{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.22";
      identifier = {
        name = "tensorflow-mnist";
        version = "0.1.0.0";
      };
      license = "LicenseRef-Apache";
      copyright = "Google Inc.";
      maintainer = "tensorflow-haskell@googlegroups.com";
      author = "TensorFlow authors";
      homepage = "https://github.com/tensorflow/haskell#readme";
      url = "";
      synopsis = "TensorFlow demo application for learning MNIST model.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "tensorflow-mnist" = {
        depends  = [
          (hsPkgs.proto-lens)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.lens-family)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.tensorflow-proto)
          (hsPkgs.tensorflow-core-ops)
          (hsPkgs.tensorflow)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.lens-family)
            (hsPkgs.proto-lens)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-mnist)
            (hsPkgs.tensorflow-mnist-input-data)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "ParseTest" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.proto-lens)
            (hsPkgs.lens-family)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-mnist)
            (hsPkgs.tensorflow-mnist-input-data)
            (hsPkgs.tensorflow-ops)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }