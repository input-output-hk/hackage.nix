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
      specVersion = "1.24";
      identifier = {
        name = "tensorflow-proto";
        version = "0.1.0.0";
      };
      license = "LicenseRef-Apache";
      copyright = "Google Inc.";
      maintainer = "tensorflow-haskell@googlegroups.com";
      author = "TensorFlow authors";
      homepage = "https://github.com/tensorflow/haskell#readme";
      url = "";
      synopsis = "TensorFlow protocol buffers.";
      description = "Please see README.md";
      buildType = "Custom";
    };
    components = {
      "tensorflow-proto" = {
        depends  = [
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-protoc)
          (hsPkgs.base)
        ];
      };
    };
  }