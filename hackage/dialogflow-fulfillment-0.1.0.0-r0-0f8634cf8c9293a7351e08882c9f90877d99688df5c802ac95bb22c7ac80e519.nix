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
      identifier = { name = "dialogflow-fulfillment"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Mauricio Fierro";
      maintainer = "mauriciofierrom@gmail.com";
      author = "Mauricio Fierro";
      homepage = "https://github.com/mauriciofierrom/dialogflow-fulfillment";
      url = "";
      synopsis = "A Dialogflow Fulfillment library for Haskell.";
      description = "A library to create responses for Google's Dialogflow fulfillment webhook.\n\nDialogflow is an end-to-end, build-once deploy-everywhere development suite\nfor creating conversational interfaces for websites, mobile applications,\npopular messaging platforms, and IoT devices. Find more at the Google Cloud\n<https://cloud.google.com/dialogflow/ site for the project>.\n\nCheck how fulfillment works in the Dialogflow\n<https://cloud.google.com/dialogflow/docs/fulfillment-how documentation>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "dialogflow-fulfillment-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dialogflow-fulfillment" or (errorHandler.buildDepError "dialogflow-fulfillment"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }