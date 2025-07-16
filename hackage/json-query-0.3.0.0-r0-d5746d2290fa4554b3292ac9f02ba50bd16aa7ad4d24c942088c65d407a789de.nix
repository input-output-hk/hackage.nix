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
      specVersion = "2.4";
      identifier = { name = "json-query"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/json-query";
      url = "";
      synopsis = "Kitchen sink for querying JSON";
      description = "The library complements json-syntax by making available several\ncommon access patterns. The utilities provided by this library\nonly query JSON. They do not update it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          (hsPkgs."json-syntax" or (errorHandler.buildDepError "json-syntax"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."scientific-notation" or (errorHandler.buildDepError "scientific-notation"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."json-query" or (errorHandler.buildDepError "json-query"))
            (hsPkgs."json-syntax" or (errorHandler.buildDepError "json-syntax"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."scientific-notation" or (errorHandler.buildDepError "scientific-notation"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }