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
      identifier = { name = "jsonschema"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "matti@dpella.io,\nlobo@dpella.io";
      author = "DPella AB";
      homepage = "https://github.com/DPella/jsonschema";
      url = "";
      synopsis = "JSON Schema derivation and validation";
      description = "Provides the `ToJSONSchema` type class and validation helpers for generating JSON\nSchema 2020-12 documents from Haskell types and validating JSON values at runtime.\nThe library includes a generic deriving strategy that handles recursive data types,\nsum-tag encoding, and refined handling of arrays and enumerations. Validation implements\nthe core and applicator vocabularies, including `$defs` and local `$ref` resolution,\npragmatic support for `unevaluated*` keywords, and detailed error traces.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
        ];
        buildable = true;
      };
      tests = {
        "test-jsonschema" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jsonschema" or (errorHandler.buildDepError "jsonschema"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }