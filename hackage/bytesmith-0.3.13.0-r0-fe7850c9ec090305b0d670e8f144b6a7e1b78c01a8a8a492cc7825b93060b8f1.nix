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
      identifier = { name = "bytesmith"; version = "0.3.13.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/bytesmith";
      url = "";
      synopsis = "Nonresumable byte parser";
      description = "Parse bytes as fast as possible. This is a nonresumable parser\nthat aggresively uses `UnboxedSums` to avoid performing any\nallocations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byte-order" or (errorHandler.buildDepError "byte-order"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
    };
  }