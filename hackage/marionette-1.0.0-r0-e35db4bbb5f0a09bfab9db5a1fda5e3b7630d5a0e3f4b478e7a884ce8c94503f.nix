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
      identifier = { name = "marionette"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "Marionette protocol for Firefox";
      description = "Marionette is an automation driver for Mozilla’s Gecko engine. It can remotely control either the UI or the internal JavaScript of a Gecko platform, such as Firefox. It can control both the chrome (i.e. menus and functions) or the content (the webpage loaded inside the browsing context), giving a high level of control and ability to replicate user actions. In addition to performing actions on the browser, Marionette can also read the properties and attributes of the DOM.\n\nIf this sounds similar to <https://dvcs.w3.org/hg/webdriver/raw-file/tip/webdriver-spec.html Selenium/WebDriver> then you’re correct! Marionette shares much of the same ethos and API as Selenium/WebDriver, with additional commands to interact with Gecko’s chrome interface. Its goal is to replicate what Selenium does for web content: to enable the tester to have the ability to send commands to remotely control a user agent.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-parsers" or (errorHandler.buildDepError "binary-parsers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "marionette-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations-lifted" or (errorHandler.buildDepError "hspec-expectations-lifted"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."marionette" or (errorHandler.buildDepError "marionette"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
    };
  }