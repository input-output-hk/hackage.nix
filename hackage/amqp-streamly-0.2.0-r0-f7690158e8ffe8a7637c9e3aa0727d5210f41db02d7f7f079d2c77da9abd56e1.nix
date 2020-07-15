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
      identifier = { name = "amqp-streamly"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Gautier DI FOLCO";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "https://github.com/blackheaven/amqp-streamly#readme";
      url = "";
      synopsis = "A simple streamly wrapper for amqp";
      description = "A simple streamly wrapper for amqp. Provides two functions `produce` and `consume`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "amqp-streamly-test" = {
          depends = [
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."amqp-streamly" or (errorHandler.buildDepError "amqp-streamly"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."testcontainers" or (errorHandler.buildDepError "testcontainers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }