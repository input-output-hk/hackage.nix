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
      specVersion = "2.2";
      identifier = { name = "bytehash"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/bytehash";
      url = "";
      synopsis = "Universal hashing of bytes";
      description = "Taken together, universal hash functions and a good source of entropy\nprovide a foundation for hash maps guarantee O(1) lookups even if an\nadversary chooses the keys. This library implements such a hash map.\nThe implementation of lookup is tuned for performance. The functions\nfor building hash maps are not since they are intended to be called\ninfrequently.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byte-order" or (errorHandler.buildDepError "byte-order"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytehash" or (errorHandler.buildDepError "bytehash"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytehash" or (errorHandler.buildDepError "bytehash"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
            (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }