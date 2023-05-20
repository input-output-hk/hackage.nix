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
      identifier = { name = "pa-field-parser"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Possehl Analytics GmbH";
      maintainer = "Philip Patsch <philip.patsch@possehl-analytics.com>";
      author = "";
      homepage = "https://github.com/possehl-analytics/pa-hackage";
      url = "";
      synopsis = "“Vertical” parsing of values";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pa-prelude" or (errorHandler.buildDepError "pa-prelude"))
          (hsPkgs."pa-error-tree" or (errorHandler.buildDepError "pa-error-tree"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-better-errors" or (errorHandler.buildDepError "aeson-better-errors"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }