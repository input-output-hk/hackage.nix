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
      identifier = { name = "pa-prelude"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Possehl Analytics GmbH";
      maintainer = "Philip Patsch <philip.patsch@possehl-analytics.com>";
      author = "";
      homepage = "https://github.com/possehl-analytics/pa-hackage";
      url = "";
      synopsis = "The Possehl Analytics Prelude";
      description = "A prelude to be used in addition to `base`’s `Prelude`";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."error" or (errorHandler.buildDepError "error"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."PyF" or (errorHandler.buildDepError "PyF"))
          (hsPkgs."validation-selective" or (errorHandler.buildDepError "validation-selective"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }