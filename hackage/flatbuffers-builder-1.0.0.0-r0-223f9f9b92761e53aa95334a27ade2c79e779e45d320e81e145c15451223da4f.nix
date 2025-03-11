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
      identifier = { name = "flatbuffers-builder"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Flatbuffers encoding based on a syntax tree";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byte-order" or (errorHandler.buildDepError "byte-order"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."run-st" or (errorHandler.buildDepError "run-st"))
          (hsPkgs."array-builder" or (errorHandler.buildDepError "array-builder"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."flatbuffers-builder" or (errorHandler.buildDepError "flatbuffers-builder"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array-builder" or (errorHandler.buildDepError "array-builder"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }