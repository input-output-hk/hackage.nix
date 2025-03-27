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
      identifier = { name = "http-client-tls"; version = "0.3.6.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "http-client backend using the connection package and tls library";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/http-client-tls>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."crypton-connection" or (errorHandler.buildDepError "crypton-connection"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          ];
          buildable = true;
        };
      };
    };
  }