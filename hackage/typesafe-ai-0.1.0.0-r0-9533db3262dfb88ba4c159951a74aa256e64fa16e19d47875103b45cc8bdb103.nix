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
      specVersion = "3.0";
      identifier = { name = "typesafe-ai"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 byteally";
      maintainer = "magesh85@gmail.com";
      author = "Magesh B";
      homepage = "https://github.com/byteally/typesafe-sdk";
      url = "";
      synopsis = "Client for the TypeSafe AI System One API";
      description = "A client for TypeSafe's System One API (<https://docs.typesafe.ai>): send\ntext or JSON state with typed Noul (yes/no), Choice and Score questions, and\nget back answers that decode to your own Haskell types.\n.\nBuilt on @http-client@ with TLS, connection reuse, per-attempt timeouts and\nretries with exponential backoff that honour @Retry-After@.\n.\nThe types, JSON codecs and calls are in @typesafe-ai-core@, which has no\nHTTP dependency, so they can also be used with servant or any other HTTP\nstack.\n.\nStart with \"TypeSafe\" and \"TypeSafe.Tutorial\".\n.\nThis is a community SDK, not affiliated with or endorsed by TypeSafe AI.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."typesafe-ai-core" or (errorHandler.buildDepError "typesafe-ai-core"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."typesafe-ai" or (errorHandler.buildDepError "typesafe-ai"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
    };
  }