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
    flags = { toys = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bet"; version = "0.1.2.3"; };
      license = "MIT";
      copyright = "Copyright (C) 2014-2015 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/bet/";
      url = "";
      synopsis = "Betfair API bindings. Bet on sports on betting exchanges.";
      description = "This library contains Haskell bindings to the Betfair API.\n\n<https://developer.betfair.com/default/api-s-and-services/sports-api/sports-overview/>\n\nAt the moment, the \\'Betting API\\' and \\'Heartbeat API\\' is implemented.\nThe \\'Accounts API\\' is not.\n\nSee \"Network.Betfair\".\n\nCAUTION: These are experimental bindings. Because of the financially\ndangerous nature of betting, I advice you to have a contingency plan if\nsomething in the library breaks down.\n\nIn particular, check the Betfair API documentation page for which version\nit is at the moment. This library is written against version 2.1.\n\nThis library enforces limits on the number of calls you can do to Betfair\nAPI in a second, to help you avoid data charges. See\n\"Network.Betfair.Unsafe\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-openssl" or (errorHandler.buildDepError "http-client-openssl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "login-test" = {
          depends = pkgs.lib.optionals (flags.toys) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bet" or (errorHandler.buildDepError "bet"))
          ];
          buildable = if flags.toys then true else false;
        };
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bet" or (errorHandler.buildDepError "bet"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
          ];
          buildable = true;
        };
      };
    };
  }