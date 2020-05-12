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
    flags = { development = false; browser = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc"; version = "0.0.0.13"; };
      license = "BSD-3-Clause";
      copyright = "(c)2018 Robert Fischer";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#README.md";
      url = "";
      synopsis = "Robert Fischer's Common library";
      description = "An enhanced Prelude and various utilities for Aeson, Servant, PSQL, and Redis that Robert Fischer uses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."servant-blaze" or (errorHandler.buildDepError "servant-blaze"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          (hsPkgs."aeson-diff" or (errorHandler.buildDepError "aeson-diff"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optionals (flags.browser) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ]) ++ (pkgs.lib).optionals (!flags.browser) [
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."wai-cors" or (errorHandler.buildDepError "wai-cors"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."simple-logger" or (errorHandler.buildDepError "simple-logger"))
          (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."servant-swagger" or (errorHandler.buildDepError "servant-swagger"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."markdown" or (errorHandler.buildDepError "markdown"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          ];
        buildable = true;
        };
      };
    }