{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or ((hsPkgs.pkgs-errors).buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.proto-lens or (pkgs.buildPackages.proto-lens or ((hsPkgs.pkgs-errors).buildToolDepError "proto-lens")))
        (hsPkgs.buildPackages.tensorflow-opgen or (pkgs.buildPackages.tensorflow-opgen or ((hsPkgs.pkgs-errors).buildToolDepError "tensorflow-opgen")))
        (hsPkgs.buildPackages.tensorflow or (pkgs.buildPackages.tensorflow or ((hsPkgs.pkgs-errors).buildToolDepError "tensorflow")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.mainland-pretty or (pkgs.buildPackages.mainland-pretty or ((hsPkgs.pkgs-errors).buildToolDepError "mainland-pretty")))
        (hsPkgs.buildPackages.text or (pkgs.buildPackages.text or ((hsPkgs.pkgs-errors).buildToolDepError "text")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."tensorflow" or ((hsPkgs.pkgs-errors).buildDepError "tensorflow"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }