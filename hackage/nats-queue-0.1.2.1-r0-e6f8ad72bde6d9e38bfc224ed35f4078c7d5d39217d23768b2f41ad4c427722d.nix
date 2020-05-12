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
      identifier = { name = "nats-queue"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "palkovsky.ondrej@gmail.com";
      author = "Ondrej Palkovsky";
      homepage = "";
      url = "";
      synopsis = "Haskell API for NATS messaging system";
      description = "This library is a Haskell driver for NATS <http://nats.io>.\nNATS is a fast and lightweight publish-subscribe messaging system.\nThis version supports authentication but does not support SSL as the current\nversion of gnatsd (go server 0.5.6) does not support it either.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."dequeue" or (errorHandler.buildDepError "dequeue"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nats-queue" or (errorHandler.buildDepError "nats-queue"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."dequeue" or (errorHandler.buildDepError "dequeue"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }