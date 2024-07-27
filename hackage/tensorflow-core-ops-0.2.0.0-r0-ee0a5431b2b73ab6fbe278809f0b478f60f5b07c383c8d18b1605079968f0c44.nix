{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "tensorflow-core-ops"; version = "0.2.0.0"; };
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
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.bytestring or (pkgs.pkgsBuildBuild.bytestring or (errorHandler.setupDepError "bytestring")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.proto-lens or (pkgs.pkgsBuildBuild.proto-lens or (errorHandler.setupDepError "proto-lens")))
        (hsPkgs.pkgsBuildBuild.tensorflow-opgen or (pkgs.pkgsBuildBuild.tensorflow-opgen or (errorHandler.setupDepError "tensorflow-opgen")))
        (hsPkgs.pkgsBuildBuild.tensorflow or (pkgs.pkgsBuildBuild.tensorflow or (errorHandler.setupDepError "tensorflow")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.mainland-pretty or (pkgs.pkgsBuildBuild.mainland-pretty or (errorHandler.setupDepError "mainland-pretty")))
        (hsPkgs.pkgsBuildBuild.text or (pkgs.pkgsBuildBuild.text or (errorHandler.setupDepError "text")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."tensorflow" or (errorHandler.buildDepError "tensorflow"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }