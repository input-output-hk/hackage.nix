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
      identifier = { name = "proto-lens-arbitrary"; version = "0.1.2.14"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "agrue+protolens@google.com";
      author = "Aden Grue";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Arbitrary instances for proto-lens.";
      description = "The proto-lens-arbitrary allows generating arbitrary messages for use with QuickCheck.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }