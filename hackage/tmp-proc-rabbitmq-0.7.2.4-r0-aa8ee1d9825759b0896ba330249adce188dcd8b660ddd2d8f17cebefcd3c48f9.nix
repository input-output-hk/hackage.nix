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
      identifier = { name = "tmp-proc-rabbitmq"; version = "0.7.2.4"; };
      license = "BSD-3-Clause";
      copyright = "2021 Tim Emiola";
      maintainer = "adetokunbo@users.noreply.github.com";
      author = "Tim Emiola";
      homepage = "";
      url = "";
      synopsis = "Launch RabbitMQ in docker using tmp-proc";
      description = "Demos how to use tmp-proc to run RabbitMQ in docker in a unittest.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tmp-proc" or (errorHandler.buildDepError "tmp-proc"))
        ];
        buildable = true;
      };
      tests = {
        "integration-test" = {
          depends = [
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-tmp-proc" or (errorHandler.buildDepError "hspec-tmp-proc"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tmp-proc" or (errorHandler.buildDepError "tmp-proc"))
            (hsPkgs."tmp-proc-rabbitmq" or (errorHandler.buildDepError "tmp-proc-rabbitmq"))
          ];
          buildable = true;
        };
      };
    };
  }