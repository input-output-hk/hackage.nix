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
      identifier = { name = "tensorflow-core-ops"; version = "0.2.0.1"; };
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
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (errorHandler.buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.proto-lens or (pkgs.buildPackages.proto-lens or (errorHandler.buildToolDepError "proto-lens")))
        (hsPkgs.buildPackages.tensorflow-opgen or (pkgs.buildPackages.tensorflow-opgen or (errorHandler.buildToolDepError "tensorflow-opgen")))
        (hsPkgs.buildPackages.tensorflow or (pkgs.buildPackages.tensorflow or (errorHandler.buildToolDepError "tensorflow")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.mainland-pretty or (pkgs.buildPackages.mainland-pretty or (errorHandler.buildToolDepError "mainland-pretty")))
        (hsPkgs.buildPackages.text or (pkgs.buildPackages.text or (errorHandler.buildToolDepError "text")))
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