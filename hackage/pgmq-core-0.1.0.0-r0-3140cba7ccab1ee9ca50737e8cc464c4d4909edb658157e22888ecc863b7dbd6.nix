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
      specVersion = "3.4";
      identifier = { name = "pgmq-core"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nadeem@topagentnetwork.com";
      author = "Nadeem Bitar";
      homepage = "https://github.com/topagentnetwork/pgmq-hs";
      url = "";
      synopsis = "Core types for pgmq-hs, a Haskell client for PGMQ";
      description = "Core types and type classes for pgmq-hs, a Haskell client library\nfor PGMQ (PostgreSQL Message Queue). Provides Message, Queue,\nQueueName, and related types used across pgmq-hs packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }