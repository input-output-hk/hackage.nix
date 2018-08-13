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
        name = "tensorflow-logging";
        version = "0.1.0.0";
      };
      license = "LicenseRef-Apache";
      copyright = "Google Inc.";
      maintainer = "tensorflow-haskell@googlegroups.com";
      author = "TensorFlow authors";
      homepage = "https://github.com/tensorflow/haskell#readme";
      url = "";
      synopsis = "TensorBoard related functionality.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "tensorflow-logging" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hostname)
          (hsPkgs.lens-family)
          (hsPkgs.proto-lens)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.tensorflow)
          (hsPkgs.tensorflow-core-ops)
          (hsPkgs.tensorflow-ops)
          (hsPkgs.tensorflow-proto)
          (hsPkgs.tensorflow-records-conduit)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "LoggingTest" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.lens-family)
            (hsPkgs.proto-lens)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.tensorflow-logging)
            (hsPkgs.tensorflow-proto)
            (hsPkgs.tensorflow-records-conduit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }