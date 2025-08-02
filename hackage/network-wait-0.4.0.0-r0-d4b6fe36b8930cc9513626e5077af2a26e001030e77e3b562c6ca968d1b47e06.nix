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
    flags = { postgres = false; redis = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "network-wait"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "2025 Michael B. Gale";
      maintainer = "github@michael-gale.co.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/network-wait#readme";
      url = "";
      synopsis = "Lightweight library for waiting on networked services to become available.";
      description = "Please see the README on GitHub at <https://github.com/mbg/network-wait#readme> and\nHaddock documentation for all modules, including those that are gated behind\npackage flags, at <https://mbg.github.io/network-wait/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
        ] ++ pkgs.lib.optional (flags.postgres) (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))) ++ pkgs.lib.optional (flags.redis) (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"));
        buildable = true;
      };
      tests = {
        "network-wait-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."network-wait" or (errorHandler.buildDepError "network-wait"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (flags.postgres) (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))) ++ pkgs.lib.optional (flags.redis) (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"));
          buildable = true;
        };
        "network-wait-test-postgres" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-wait" or (errorHandler.buildDepError "network-wait"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (flags.postgres) (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))) ++ pkgs.lib.optional (flags.redis) (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"));
          buildable = if flags.postgres then true else false;
        };
        "network-wait-test-redis" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-wait" or (errorHandler.buildDepError "network-wait"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (flags.postgres) (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))) ++ pkgs.lib.optional (flags.redis) (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"));
          buildable = if flags.redis then true else false;
        };
      };
    };
  }