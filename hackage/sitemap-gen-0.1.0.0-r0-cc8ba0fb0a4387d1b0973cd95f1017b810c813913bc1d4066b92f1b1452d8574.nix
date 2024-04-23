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
      specVersion = "1.12";
      identifier = { name = "sitemap-gen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/sitemap-gen#readme";
      url = "";
      synopsis = "Generate XML Sitemaps & Sitemap Indexes";
      description = "The @sitemap-gen@ package uses the @xmlgen@ package to generate XML\nsitemaps that are compliant with the sitemaps.org XML schema.\n\nSee the \"Web.Sitemap.Gen\" module and the\n<https://github.com/prikhi/sitemap-gen/blob/master/README.md README> file\nfor documentation & usage details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xmlgen" or (errorHandler.buildDepError "xmlgen"))
        ];
        buildable = true;
      };
      tests = {
        "sitemap-gen-tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."sitemap-gen" or (errorHandler.buildDepError "sitemap-gen"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }