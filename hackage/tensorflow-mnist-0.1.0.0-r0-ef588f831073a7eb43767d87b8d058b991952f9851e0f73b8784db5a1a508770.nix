{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."tensorflow-proto" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-proto"))
          (hsPkgs."tensorflow-core-ops" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-core-ops"))
          (hsPkgs."tensorflow" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "Main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
            (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
            (hsPkgs."tensorflow" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow"))
            (hsPkgs."tensorflow-mnist" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-mnist"))
            (hsPkgs."tensorflow-mnist-input-data" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-mnist-input-data"))
            (hsPkgs."tensorflow-ops" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-proto"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ParseTest" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
            (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
            (hsPkgs."tensorflow" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow"))
            (hsPkgs."tensorflow-mnist" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-mnist"))
            (hsPkgs."tensorflow-mnist-input-data" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-mnist-input-data"))
            (hsPkgs."tensorflow-ops" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-ops"))
            (hsPkgs."tensorflow-proto" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow-proto"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }