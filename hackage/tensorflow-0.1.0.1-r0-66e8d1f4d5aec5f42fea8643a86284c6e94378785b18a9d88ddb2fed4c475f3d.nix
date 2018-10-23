{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "tensorflow";
        version = "0.1.0.1";
      };
      license = "LicenseRef-Apache";
      copyright = "Google Inc.";
      maintainer = "tensorflow-haskell@googlegroups.com";
      author = "TensorFlow authors";
      homepage = "https://github.com/tensorflow/haskell#readme";
      url = "";
      synopsis = "TensorFlow bindings.";
      description = "This library provides an interface to the TensorFlow\nbindings.  \"TensorFlow.Core\" contains the base API for\nbuilding and running computational graphs.  Other packages\nsuch as @tensorflow-ops@ contain bindings to the actual\ncomputational kernels.\n\nFor more documentation and examples, see\n<https://github.com/tensorflow/haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "tensorflow" = {
        depends  = [
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-protoc)
          (hsPkgs.tensorflow-proto)
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.fgl)
          (hsPkgs.lens-family)
          (hsPkgs.mainland-pretty)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."tensorflow") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "FFITest" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens-family)
            (hsPkgs.proto-lens)
            (hsPkgs.tensorflow)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "VarIntTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.tensorflow)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }