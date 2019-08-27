let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
          (hsPkgs."http-client-openssl" or (buildDepError "http-client-openssl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-http" or (buildDepError "pipes-http"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      exes = {
        "login-test" = {
          depends = (pkgs.lib).optionals (flags.toys) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bet" or (buildDepError "bet"))
            ];
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bet" or (buildDepError "bet"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            ];
          };
        };
      };
    }