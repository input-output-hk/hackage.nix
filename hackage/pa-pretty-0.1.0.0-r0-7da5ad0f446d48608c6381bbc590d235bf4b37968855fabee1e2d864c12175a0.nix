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
      identifier = { name = "pa-pretty"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Possehl Analytics GmbH";
      maintainer = "Philip Patsch <philip.patsch@possehl-analytics.com>";
      author = "";
      homepage = "https://github.com/possehl-analytics/pa-hackage";
      url = "";
      synopsis = "Some pretty-printing helpers";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pa-prelude" or (errorHandler.buildDepError "pa-prelude"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."nicify-lib" or (errorHandler.buildDepError "nicify-lib"))
          ];
        buildable = true;
        };
      };
    }