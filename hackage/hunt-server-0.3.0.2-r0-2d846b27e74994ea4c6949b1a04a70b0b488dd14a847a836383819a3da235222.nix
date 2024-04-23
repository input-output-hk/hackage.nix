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
    flags = { statsd = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hunt-server"; version = "0.3.0.2"; };
      license = "MIT";
      copyright = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
      maintainer = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
      author = "Chris Reumann, Ulf Sauer, Sebastian Philipp";
      homepage = "http://github.com/hunt-framework";
      url = "";
      synopsis = "A search and indexing engine server.";
      description = "Standalone search server based on the Hunt searchengine.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hunt-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."hunt-searchengine" or (errorHandler.buildDepError "hunt-searchengine"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
          ] ++ pkgs.lib.optional (flags.statsd) (hsPkgs."ekg-statsd" or (errorHandler.buildDepError "ekg-statsd"));
          buildable = true;
        };
      };
    };
  }