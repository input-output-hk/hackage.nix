{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { toys = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bet"; version = "0.1.2.1"; };
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."http-client-openssl" or ((hsPkgs.pkgs-errors).buildDepError "http-client-openssl"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-http" or ((hsPkgs.pkgs-errors).buildDepError "pipes-http"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "login-test" = {
          depends = (pkgs.lib).optionals (flags.toys) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bet" or ((hsPkgs.pkgs-errors).buildDepError "bet"))
            ];
          buildable = if flags.toys then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bet" or ((hsPkgs.pkgs-errors).buildDepError "bet"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        };
      };
    }