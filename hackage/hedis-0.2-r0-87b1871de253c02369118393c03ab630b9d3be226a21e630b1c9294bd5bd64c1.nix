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
    flags = { benchmark = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hedis"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Falko Peters";
      maintainer = "falko.peters@gmail.com";
      author = "Falko Peters";
      homepage = "https://github.com/informatikr/hedis";
      url = "";
      synopsis = "Client library for the Redis datastore: supports full command set,\npipelining.";
      description = "Redis is an open source, advanced key-value store. It is often referred to\nas a data structure server since keys can contain strings, hashes, lists,\nsets and sorted sets. This library is a Haskell client for the Redis\ndatastore. Compared to other Haskell client libraries it has some\nadvantages:\n\n[Complete Redis 2.4 command set:] All Redis commands\n(<http://redis.io/commands>) are available as haskell functions. The\nexceptions to the rule are the MONITOR and SYNC commands.\n\n[Pipelining \\\"Just Works\\\":] Commands are pipelined\n(<http://redis.io/topics/pipelining>) as much as possible without any\nwork by the user.\n\n[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server\n(<http://redis.io/topics/pubsub>), clients are not allowed to issue\ncommands other than subscribing to or unsubscribing from channels. This\nlibrary uses the type system to enforce the correct behavior.\n\nFor detailed documentation, see the \"Database.Redis\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
        ];
        buildable = true;
      };
      exes = {
        "hedis-benchmark" = {
          depends = pkgs.lib.optionals (flags.benchmark) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if flags.benchmark then true else false;
        };
      };
    };
  }