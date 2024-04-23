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
      identifier = { name = "bytetrie"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Layer 3 Communications";
      maintainer = "amartin@layer3com.com";
      author = "Eric Demko";
      homepage = "https://github.com/byteverse/bytetrie";
      url = "";
      synopsis = "Tries with Bytes as keys.";
      description = "Tries with 'Bytes' (equiv. 'ByteArray') as keys. This implementation is\noptimized for performing queries rather than updating the structure\nrepeatedly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."byte-containers" or (errorHandler.buildDepError "byte-containers"))
          (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."unpacked-maybe" or (errorHandler.buildDepError "unpacked-maybe"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byte-containers" or (errorHandler.buildDepError "byte-containers"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytetrie" or (errorHandler.buildDepError "bytetrie"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."unpacked-maybe" or (errorHandler.buildDepError "unpacked-maybe"))
          ];
          buildable = true;
        };
      };
    };
  }