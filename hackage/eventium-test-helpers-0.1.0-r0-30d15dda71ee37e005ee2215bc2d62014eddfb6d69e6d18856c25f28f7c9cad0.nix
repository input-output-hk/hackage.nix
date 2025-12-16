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
      specVersion = "1.12";
      identifier = { name = "eventium-test-helpers"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alexander Sidorenko";
      author = "";
      homepage = "https://github.com/aleks-sidorenko/eventium#readme";
      url = "";
      synopsis = "Common module used for eventium tests";
      description = "Eventium-test-helpers provides common testing utilities and helper functions for testing Eventium-based\napplications. It includes utilities for event store testing, serialization testing, and common test fixtures\nthat are shared across the Eventium test suite. This package helps reduce code duplication in tests and\nprovides a consistent testing interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-casing" or (errorHandler.buildDepError "aeson-casing"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."eventium-core" or (errorHandler.buildDepError "eventium-core"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }