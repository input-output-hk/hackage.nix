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
      identifier = { name = "alpaca-netcode"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 David Eichmann";
      maintainer = "davide@well-typed.com";
      author = "David Eichmann";
      homepage = "";
      url = "";
      synopsis = "Rollback/replay NetCode for realtime, deterministic, multiplayer games.";
      description = "A rollback/replay client-server system for realtime multiplayer games. The API\nonly requires you to express your game as a pure, deterministic function.\n\nSee \"Alpaca.NetCode\" to get started.\n\n=== Advantages\n* Simple code. Your game logic contains no NetCode.\n* Low bandwidth. Only inputs are shared.\n* Zero latency. Player's own inputs affect their game immediatly.\n* UDP based. Unordered and using redundancy to mitigate packet loss.\n* Lightweight server. The server does not run the game logic, it only relays and tracks user inputs.\n* Cheating. Only inputs are shared which eliminates a whole class state manipulation cheats.\n\n=== Disadvantages\n* Increased CPU usage. Rollback/replay means that clients must run the game step function multiple times per frame.\n* Not suitable for large numbers of players. Tens of players is likey reasonable.\n\n=== Disclaimer\nThis is an initial release with minimal functionality and still very\nexperimental. Use at your own risk.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."flat" or (errorHandler.buildDepError "flat"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-run" or (errorHandler.buildDepError "network-run"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alpaca-netcode" or (errorHandler.buildDepError "alpaca-netcode"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }