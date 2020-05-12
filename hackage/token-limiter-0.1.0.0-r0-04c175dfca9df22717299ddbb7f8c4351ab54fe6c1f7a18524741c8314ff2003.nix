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
      specVersion = "2.2";
      identifier = { name = "token-limiter"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2019 Kadena LLC";
      maintainer = "greg@gregorycollins.net";
      author = "Gregory Collins";
      homepage = "https://github.com/gregorycollins/token-limiter";
      url = "";
      synopsis = "Fast rate limiting using the token bucket algorithm (BSD)";
      description = "Fast rate limiting using the token bucket algorithm. BSD-licensed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "token-limiter-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."token-limiter" or (errorHandler.buildDepError "token-limiter"))
            ];
          buildable = true;
          };
        };
      };
    }