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
      identifier = { name = "context-http-client"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "2020 (c) Jason Shipman";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://sr.ht/~jship/context/";
      url = "";
      synopsis = "Modify HTTP requests/responses using context";
      description = "Modify outgoing HTTP requests and incoming HTTP responses using context.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."context" or (errorHandler.buildDepError "context"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
        ];
        buildable = true;
      };
      tests = {
        "context-http-client-test-suite" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."context" or (errorHandler.buildDepError "context"))
            (hsPkgs."context-http-client" or (errorHandler.buildDepError "context-http-client"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }