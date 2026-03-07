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
    flags = { ci = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "eventium-testkit"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alexander Sidorenko";
      author = "";
      homepage = "https://github.com/aleks-sidorenko/eventium#readme";
      url = "";
      synopsis = "Testing utilities for eventium";
      description = "Eventium-testkit provides common testing utilities and helper functions for testing Eventium-based\napplications. It includes utilities for event store testing, serialization testing, and common test fixtures\nthat are shared across the Eventium test suite. This package helps reduce code duplication in tests and\nprovides a consistent testing interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
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