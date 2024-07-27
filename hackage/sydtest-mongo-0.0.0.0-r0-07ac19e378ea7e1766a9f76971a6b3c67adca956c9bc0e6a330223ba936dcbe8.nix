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
    flags = { sydtest_integration_tests = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "sydtest-mongo"; version = "0.0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/sydtest#readme";
      url = "";
      synopsis = "An mongoDB companion library for sydtest";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."port-utils" or (errorHandler.buildDepError "port-utils"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          (hsPkgs."sydtest-process" or (errorHandler.buildDepError "sydtest-process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      tests = {
        "sydtest-mongo-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-mongo" or (errorHandler.buildDepError "sydtest-mongo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.sydtest-discover.components.exes.sydtest-discover or (pkgs.pkgsBuildBuild.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = if flags.sydtest_integration_tests then true else false;
        };
      };
    };
  }