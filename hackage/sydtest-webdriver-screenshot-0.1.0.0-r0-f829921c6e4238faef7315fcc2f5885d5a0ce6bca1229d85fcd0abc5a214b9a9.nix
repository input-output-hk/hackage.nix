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
      identifier = {
        name = "sydtest-webdriver-screenshot";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2022 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "";
      url = "";
      synopsis = "A webdriver screenshot companion library for sydtest";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          (hsPkgs."sydtest-webdriver" or (errorHandler.buildDepError "sydtest-webdriver"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."webdriver" or (errorHandler.buildDepError "webdriver"))
        ];
        buildable = true;
      };
      tests = {
        "sydtest-webdriver-screenshot-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-wai" or (errorHandler.buildDepError "sydtest-wai"))
            (hsPkgs."sydtest-webdriver" or (errorHandler.buildDepError "sydtest-webdriver"))
            (hsPkgs."sydtest-webdriver-screenshot" or (errorHandler.buildDepError "sydtest-webdriver-screenshot"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.sydtest-discover.components.exes.sydtest-discover or (pkgs.pkgsBuildBuild.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
    };
  }