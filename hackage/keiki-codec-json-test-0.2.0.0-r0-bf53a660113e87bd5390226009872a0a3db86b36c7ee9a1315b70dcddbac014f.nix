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
      identifier = { name = "keiki-codec-json-test"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Nadeem Bitar";
      maintainer = "nadeem@gmail.com";
      author = "Nadeem Bitar";
      homepage = "";
      url = "";
      synopsis = "Property-test toolkit for keiki-codec-json downstream consumers.";
      description = "Sibling package to keiki-codec-json providing two hspec-callable\ntest helpers consumers wire into their own test suites:\n.\n* @Keiki.Codec.JSON.Test.Golden.slotGoldenSpec@ — a per-slot-type\ngolden-byte detector that catches EP-36 §4 case #10 (silent\n@Aeson.ToJSON@ instance change), the schema-evolution case the\nshape hash cannot detect by design.\n.\n* @Keiki.Codec.JSON.Test.regFileCodecProps@ /\n@regFileShapeSensitivitySpec@ — library-ised versions of the\nEP-36 M3 round-trip + sensitivity disciplines, parameterised\nover the consumer's own slot list.\n.\nSplit into a separate package so consumers of @keiki-codec-json@\nfor production do not transitively pick up @QuickCheck@ /\n@hspec@ / @quickcheck-instances@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."keiki" or (errorHandler.buildDepError "keiki"))
          (hsPkgs."keiki-codec-json" or (errorHandler.buildDepError "keiki-codec-json"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "keiki-codec-json-test-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."keiki" or (errorHandler.buildDepError "keiki"))
            (hsPkgs."keiki-codec-json" or (errorHandler.buildDepError "keiki-codec-json"))
            (hsPkgs."keiki-codec-json-test" or (errorHandler.buildDepError "keiki-codec-json-test"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }