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
      identifier = { name = "wai-rate-limit-redis"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) Michael B. Gale";
      maintainer = "m.gale@warwick.ac.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/wai-rate-limit#readme";
      url = "";
      synopsis = "Redis backend for rate limiting as WAI middleware";
      description = "A Haskell library which implements rate limiting as WAI middleware";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."wai-rate-limit" or (errorHandler.buildDepError "wai-rate-limit"))
        ];
        buildable = true;
      };
      tests = {
        "wai-rate-limit-redis-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-rate-limit" or (errorHandler.buildDepError "wai-rate-limit"))
            (hsPkgs."wai-rate-limit-redis" or (errorHandler.buildDepError "wai-rate-limit-redis"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
    };
  }