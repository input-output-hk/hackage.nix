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
      identifier = { name = "keiki-codec-json"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Nadeem Bitar";
      maintainer = "nadeem@gmail.com";
      author = "Nadeem Bitar";
      homepage = "";
      url = "";
      synopsis = "Optional JSON codec for keiki's RegFile.";
      description = "Sibling package to keiki providing a JSON encoder, decoder, and\nstreaming encoder for @RegFile rs@. The keiki core remains\naeson-free; this package opts in. See keiki's @Keiki.Shape@\nmodule for the GHC-upgrade-safe shape hash used to discriminate\nsnapshots — the two halves of the snapshot persistence story.\n.\nThree methods on @class RegFileToJSON rs@:\n.\n* @regFileToJSON :: RegFile rs -> Aeson.Value@ — strict\nValue-path encoder.\n.\n* @regFileFromJSON :: Aeson.Value -> Either String (RegFile rs)@\n— strict decoder with per-slot error messages on missing /\nextra / type-mismatched fields.\n.\n* @regFileToEncoding :: RegFile rs -> Aeson.Encoding@ —\nstreaming encoder over @Aeson.Series@, avoiding the\nO(output-size) intermediate @Aeson.Value@ allocation. Recommended\nfor RegFiles with multi-MB slot values.\n.\nAlso ships a Template Haskell helper module\n@Keiki.Codec.JSON.TH@ with @deriveRegFileCodec@ that emits the\nthree codec functions for a record type with @deriving Generic@.\n.\nThe companion package @keiki-codec-json-test@ ships a property-\ntest toolkit for downstream consumers (case-#10 ToJSON-change\ndetector plus library-ised round-trip / sensitivity helpers).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."keiki" or (errorHandler.buildDepError "keiki"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "keiki-codec-json-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."keiki" or (errorHandler.buildDepError "keiki"))
            (hsPkgs."keiki-codec-json" or (errorHandler.buildDepError "keiki-codec-json"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "keiki-codec-json-bench" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."keiki" or (errorHandler.buildDepError "keiki"))
            (hsPkgs."keiki-codec-json" or (errorHandler.buildDepError "keiki-codec-json"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }