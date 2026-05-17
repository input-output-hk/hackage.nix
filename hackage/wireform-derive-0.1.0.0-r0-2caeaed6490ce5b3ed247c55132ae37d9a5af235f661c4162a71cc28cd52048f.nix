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
      identifier = { name = "wireform-derive"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/wireform-";
      url = "";
      synopsis = "Annotation-driven Template Haskell deriver core for wireform";
      description = "Shared @Modifier@ annotation vocabulary and Template Haskell\nreflection machinery used by per-format @wireform-*@ deriver\npackages (@wireform-proto@, @wireform-cbor@, @wireform-msgpack@,\n@wireform-thrift@, @wireform-avro@, @wireform-bson@, …).\n.\nA single @{-\\# ANN ... \\#-}@ pragma on a Haskell record drives\ninstance generation for every wire format the user opts into.\nThe vocabulary lives in @Wireform.Derive.Modifier@:\n.\n* @rename@, @renameStyle@, @renameWith@, @renameIdiomatic@ --\n  wire-key text overrides.\n* @tag N@ -- explicit field number / Thrift field ID / Bond ID /\n  Iceberg field ID.\n* @skip@, @defaults@, @required@, @optional@, @coerced@,\n  @flatten@, @wireOverride@ -- standard knobs.\n* @forBackend@ / @forBackends@ / @disableFor@ -- per-backend\n  overrides that shadow globals without conflicting.\n* @mapKey@, @oneof@ -- format-specific shape hints.\n* @extension@ -- typed per-backend payloads via the\n  @BackendModifier@ typeclass.\n.\nSee the umbrella @wireform@ package for the full multi-format\nstory.  Inspired by riz0id's @serde-th@ and Aeson's @aeson-th@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      tests = {
        "wireform-derive-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wireform-derive" or (errorHandler.buildDepError "wireform-derive"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }