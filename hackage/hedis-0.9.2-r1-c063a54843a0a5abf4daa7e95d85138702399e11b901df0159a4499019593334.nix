{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hedis"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Falko Peters";
      maintainer = "Kostiantyn Rybnikov <k-bx@k-bx.com>";
      author = "Falko Peters <falko.peters@gmail.com>";
      homepage = "https://github.com/informatikr/hedis";
      url = "";
      synopsis = "Client library for the Redis datastore: supports full command set,\npipelining.";
      description = "Redis is an open source, advanced key-value store. It is often referred to\nas a data structure server since keys can contain strings, hashes, lists,\nsets and sorted sets. This library is a Haskell client for the Redis\ndatastore. Compared to other Haskell client libraries it has some\nadvantages:\n\n[Complete Redis 2.6 command set:] All Redis commands\n(<http://redis.io/commands>) are available as haskell functions, except\nfor the MONITOR and SYNC commands. Additionally, a low-level API is\nexposed that  makes it easy for the library user to implement further\ncommands, such as new commands from an experimental Redis version.\n\n[Automatic Optimal Pipelining:] Commands are pipelined\n(<http://redis.io/topics/pipelining>) as much as possible without any\nwork by the user. See\n<http://informatikr.com/2012/redis-pipelining.html> for a\ntechnical explanation of automatic optimal pipelining.\n\n[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server\n(<http://redis.io/topics/pubsub>), clients are not allowed to issue\ncommands other than subscribing to or unsubscribing from channels. This\nlibrary uses the type system to enforce the correct behavior.\n\n[Connect via TCP or Unix Domain Socket:] TCP sockets are the default way to\nconnect to a Redis server. For connections to a server on the same\nmachine, Unix domain sockets offer higher performance than the standard\nTCP connection.\n\nFor detailed documentation, see the \"Database.Redis\" module.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."scanner" or ((hsPkgs.pkgs-errors).buildDepError "scanner"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "hedis-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."slave-thread" or ((hsPkgs.pkgs-errors).buildDepError "slave-thread"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "hedis-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }