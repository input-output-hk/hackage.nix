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
      specVersion = "1.22";
      identifier = { name = "tensorflow-mnist"; version = "0.1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."tensorflow-proto" or (errorHandler.buildDepError "tensorflow-proto"))
          (hsPkgs."tensorflow-core-ops" or (errorHandler.buildDepError "tensorflow-core-ops"))
          (hsPkgs."tensorflow" or (errorHandler.buildDepError "tensorflow"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."tensorflow" or (errorHandler.buildDepError "tensorflow"))
            (hsPkgs."tensorflow-mnist" or (errorHandler.buildDepError "tensorflow-mnist"))
            (hsPkgs."tensorflow-mnist-input-data" or (errorHandler.buildDepError "tensorflow-mnist-input-data"))
            (hsPkgs."tensorflow-ops" or (errorHandler.buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (errorHandler.buildDepError "tensorflow-proto"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ParseTest" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."tensorflow" or (errorHandler.buildDepError "tensorflow"))
            (hsPkgs."tensorflow-mnist" or (errorHandler.buildDepError "tensorflow-mnist"))
            (hsPkgs."tensorflow-mnist-input-data" or (errorHandler.buildDepError "tensorflow-mnist-input-data"))
            (hsPkgs."tensorflow-ops" or (errorHandler.buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or (errorHandler.buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }