{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { toys = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bet"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2014 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/hs-bet/";
      url = "";
      synopsis = "Betfair API bindings. Bet on sports on betting exchanges.";
      description = "This library contains Haskell bindings to the Betfair API.\n\n<https://developer.betfair.com/default/api-s-and-services/sports-api/sports-overview/>\n\nAt the moment, the \\'Betting API\\' and \\'Heartbeat API\\' is implemented.\nThe \\'Accounts API\\' is not.\n\nSee \"Network.Betfair\".\n\nCAUTION: These are experimental bindings. Because of the financially\ndangerous nature of betting, I advice you to have a contingency plan if\nsomething in the library breaks down.\n\nIn particular, check the Betfair API documentation page for which version\nit is at the moment. This library is written against version 2.0 exactly.\n\nThis library enforces limits on the number of calls you can do to Betfair\nAPI in a second, to help you avoid data charges. See\n\"Network.Betfair.Unsafe\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.http-client-openssl)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.pipes-http)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      exes = {
        "login-test" = {
          depends = (pkgs.lib).optionals (flags.toys) [
            (hsPkgs.base)
            (hsPkgs.bet)
            ];
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bet)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.semigroups)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            ];
          };
        };
      };
    }