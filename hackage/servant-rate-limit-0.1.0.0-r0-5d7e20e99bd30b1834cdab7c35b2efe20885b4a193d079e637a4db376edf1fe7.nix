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
    flags = { client = true; server = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "servant-rate-limit"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) Michael B. Gale";
      maintainer = "github@michael-gale.co.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/wai-rate-limit#readme";
      url = "";
      synopsis = "Rate limiting for Servant";
      description = "A Haskell library which implements rate limiting for Servant";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-rate-limit" or (errorHandler.buildDepError "wai-rate-limit"))
          ] ++ (pkgs.lib).optional (flags.server) (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))) ++ (pkgs.lib).optional (flags.client) (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"));
        buildable = true;
        };
      tests = {
        "servant-rate-limit-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-rate-limit" or (errorHandler.buildDepError "servant-rate-limit"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-rate-limit" or (errorHandler.buildDepError "wai-rate-limit"))
            (hsPkgs."wai-rate-limit-redis" or (errorHandler.buildDepError "wai-rate-limit-redis"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ] ++ (pkgs.lib).optional (flags.server) (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))) ++ (pkgs.lib).optional (flags.client) (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"));
          buildable = true;
          };
        };
      };
    }