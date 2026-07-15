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
      identifier = { name = "marionette-effectful"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "Effectful driver for Marionette";
      description = "Adaptation of the @<https://hackage.haskell.org/package/marionette marionette>@ library for the @<https://hackage.haskell.org/package/effectful effectful>@ ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."marionette" or (errorHandler.buildDepError "marionette"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "marionette-effectful-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."marionette" or (errorHandler.buildDepError "marionette"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec-effectful" or (errorHandler.buildDepError "hspec-effectful"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."marionette-effectful" or (errorHandler.buildDepError "marionette-effectful"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-process-effectful" or (errorHandler.buildDepError "typed-process-effectful"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
    };
  }