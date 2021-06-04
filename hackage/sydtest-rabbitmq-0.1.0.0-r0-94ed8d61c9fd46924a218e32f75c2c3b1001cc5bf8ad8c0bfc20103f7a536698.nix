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
      identifier = { name = "sydtest-rabbitmq"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2020-2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/sydtest#readme";
      url = "";
      synopsis = "An rabbitmq companion library for sydtest";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."port-utils" or (errorHandler.buildDepError "port-utils"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          (hsPkgs."sydtest-typed-process" or (errorHandler.buildDepError "sydtest-typed-process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
        buildable = true;
        };
      tests = {
        "sydtest-amqp-test" = {
          depends = [
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-rabbitmq" or (errorHandler.buildDepError "sydtest-rabbitmq"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover.components.exes.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
            ];
          buildable = if flags.sydtest_integration_tests then true else false;
          };
        };
      };
    }