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
      specVersion = "1.10";
      identifier = { name = "freddy"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "indrek@urgas.eu";
      author = "Indrek Juhkam";
      homepage = "https://github.com/salemove/freddy-hs";
      url = "";
      synopsis = "RabbitMQ Messaging API supporting request-response";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
          (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }