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
      specVersion = "1.10";
      identifier = { name = "proto-lens-combinators"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "zearen+protolens@google.com";
      author = "Zie Weaver";
      homepage = "https://github.com/google/proto-lens";
      url = "";
      synopsis = "Utilities functions to proto-lens.";
      description = "Useful things for working with protos.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.proto-lens-protoc or (pkgs.buildPackages.proto-lens-protoc or (errorHandler.setupDepError "proto-lens-protoc")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "combinators_test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."proto-lens-combinators" or (errorHandler.buildDepError "proto-lens-combinators"))
            (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }