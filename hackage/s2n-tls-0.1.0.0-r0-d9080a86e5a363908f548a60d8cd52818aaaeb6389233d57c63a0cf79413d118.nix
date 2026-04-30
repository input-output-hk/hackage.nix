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
      specVersion = "3.0";
      identifier = { name = "s2n-tls"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2026 Daniel Goertzen";
      maintainer = "daniel.goertzen@gmail.com";
      author = "Daniel Goertzen";
      homepage = "https://github.com/goertzenator/s2n-tls";
      url = "";
      synopsis = "High-level Haskell bindings to s2n-tls";
      description = "Safe, high-level Haskell bindings to the s2n-tls library,\nproviding memory-safe ForeignPtr wrappers and Haskell-idiomatic\nerror handling.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."s2n-tls-ffi" or (errorHandler.buildDepError "s2n-tls-ffi"))
        ];
        buildable = true;
      };
      tests = {
        "s2n-tls-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."s2n-tls" or (errorHandler.buildDepError "s2n-tls"))
            (hsPkgs."s2n-tls-ffi" or (errorHandler.buildDepError "s2n-tls-ffi"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }