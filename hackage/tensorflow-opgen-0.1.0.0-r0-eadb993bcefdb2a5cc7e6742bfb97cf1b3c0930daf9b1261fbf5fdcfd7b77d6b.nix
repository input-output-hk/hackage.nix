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
        name = "tensorflow-opgen";
        version = "0.1.0.0";
      };
      license = "LicenseRef-Apache";
      copyright = "Google Inc.";
      maintainer = "tensorflow-haskell@googlegroups.com";
      author = "TensorFlow authors";
      homepage = "https://github.com/tensorflow/haskell#readme";
      url = "";
      synopsis = "Code generation for TensorFlow operations.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "tensorflow-opgen" = {
        depends  = [
          (hsPkgs.proto-lens)
          (hsPkgs.tensorflow-proto)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.lens-family)
          (hsPkgs.mainland-pretty)
          (hsPkgs.optparse-applicative)
          (hsPkgs.semigroups)
          (hsPkgs.text)
        ];
      };
    };
  }