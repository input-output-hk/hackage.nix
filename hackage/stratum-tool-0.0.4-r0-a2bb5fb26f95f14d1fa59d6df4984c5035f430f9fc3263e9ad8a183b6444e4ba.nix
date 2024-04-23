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
    flags = { ssl = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "stratum-tool"; version = "0.0.4"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "joel.lehtonen@koodilehto.fi";
      author = "Joel Lehtonen";
      homepage = "";
      url = "";
      synopsis = "Client for Stratum protocol";
      description = "Connects to Electrum server via Stratum protocol and\nallows querying bitcoin wallet balances and other commands\nsupported by the server. It supports the original JSON format\nin addition to shell script friendly JSON breadcrumbs format.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "stratum-tool" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."curl-aeson" or (errorHandler.buildDepError "curl-aeson"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ pkgs.lib.optional (flags.ssl) (hsPkgs."connection" or (errorHandler.buildDepError "connection"));
          buildable = true;
        };
      };
    };
  }