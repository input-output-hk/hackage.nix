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
      specVersion = "1.8";
      identifier = { name = "Buster"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2012 Michael Xavier";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/Buster";
      url = "";
      synopsis = "Hits a set of urls periodically to bust caches";
      description = "Buster is a simple tool to periodically make requests to a list of URLs. The\nmain use case for this is to bust caches.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "buster" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }