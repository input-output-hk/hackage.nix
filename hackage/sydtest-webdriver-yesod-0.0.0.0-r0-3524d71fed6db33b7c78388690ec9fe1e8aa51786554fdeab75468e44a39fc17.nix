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
      identifier = { name = "sydtest-webdriver-yesod"; version = "0.0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2022 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "";
      url = "";
      synopsis = "A webdriver+yesod companion library for sydtest";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          (hsPkgs."sydtest-wai" or (errorHandler.buildDepError "sydtest-wai"))
          (hsPkgs."sydtest-webdriver" or (errorHandler.buildDepError "sydtest-webdriver"))
          (hsPkgs."sydtest-yesod" or (errorHandler.buildDepError "sydtest-yesod"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."webdriver" or (errorHandler.buildDepError "webdriver"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          ];
        buildable = true;
        };
      tests = {
        "sydtest-webdriver-yesod-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-webdriver" or (errorHandler.buildDepError "sydtest-webdriver"))
            (hsPkgs."sydtest-webdriver-yesod" or (errorHandler.buildDepError "sydtest-webdriver-yesod"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover.components.exes.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
            ];
          buildable = true;
          };
        };
      };
    }