{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "tensorflow-core-ops"; version = "0.1.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "Google Inc.";
      maintainer = "tensorflow-haskell@googlegroups.com";
      author = "TensorFlow authors";
      homepage = "https://github.com/tensorflow/haskell#readme";
      url = "";
      synopsis = "Haskell wrappers for Core Tensorflow Ops.";
      description = "Code generated signatures for the Ops in libtensorflow.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.proto-lens or (pkgs.buildPackages.proto-lens))
        (hsPkgs.buildPackages.tensorflow-opgen or (pkgs.buildPackages.tensorflow-opgen))
        (hsPkgs.buildPackages.tensorflow or (pkgs.buildPackages.tensorflow))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.mainland-pretty or (pkgs.buildPackages.mainland-pretty))
        (hsPkgs.buildPackages.text or (pkgs.buildPackages.text))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.bytestring)
          (hsPkgs.proto-lens)
          (hsPkgs.tensorflow)
          (hsPkgs.base)
          (hsPkgs.lens-family)
          (hsPkgs.text)
          ];
        };
      };
    }