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
      identifier = { name = "balkon"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jaro@argonaut-constellation.org";
      author = "Jaro";
      homepage = "https://argonaut-constellation.org/";
      url = "";
      synopsis = "Text layout engine built on top of HarfBuzz.";
      description = "\nGiven an input text and formatting options, Balkón produces an inline\nlayout with defined glyph positions and box coordinates, all within a\ncontaining unit called a paragraph. See \"Data.Text.ParagraphLayout.Rich\".\n\nInternally, HarfBuzz is used to shape individual runs of text, each of\nwhich fits within one line and has a constant script, direction, language,\nand formatting. Balkón abstracts this so that you can provide text with any\nmix of these attributes and a desired line width for line breaking.\n\nAdditionally, Balkón can be used for breaking an inline layout into pages.\nSee \"Data.Text.ParagraphLayout\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."balkon".components.sublibs.balkon-internal or (errorHandler.buildDepError "balkon:balkon-internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "balkon-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."harfbuzz-pure" or (errorHandler.buildDepError "harfbuzz-pure"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            (hsPkgs."unicode-data-scripts" or (errorHandler.buildDepError "unicode-data-scripts"))
          ];
          buildable = true;
        };
      };
      tests = {
        "balkon-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."balkon" or (errorHandler.buildDepError "balkon"))
            (hsPkgs."balkon".components.sublibs.balkon-internal or (errorHandler.buildDepError "balkon:balkon-internal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."harfbuzz-pure" or (errorHandler.buildDepError "harfbuzz-pure"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }