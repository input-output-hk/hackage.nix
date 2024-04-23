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
      identifier = { name = "pa-json"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Possehl Analytics GmbH";
      maintainer = "Philip Patsch <philip.patsch@possehl-analytics.com>";
      author = "";
      homepage = "https://github.com/possehl-analytics/pa-hackage";
      url = "";
      synopsis = "Our JSON parsers/encoders";
      description = "The interface of `aeson` is unfortunately extremely … suboptimal. Here’s some wrappers trying to improve the situation, which we use internally.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pa-prelude" or (errorHandler.buildDepError "pa-prelude"))
          (hsPkgs."pa-label" or (errorHandler.buildDepError "pa-label"))
          (hsPkgs."pa-error-tree" or (errorHandler.buildDepError "pa-error-tree"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."aeson-better-errors" or (errorHandler.buildDepError "aeson-better-errors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
        ];
        buildable = true;
      };
    };
  }