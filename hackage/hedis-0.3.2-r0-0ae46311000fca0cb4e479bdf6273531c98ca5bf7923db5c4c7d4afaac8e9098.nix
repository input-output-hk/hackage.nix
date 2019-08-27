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
    flags = { benchmark = false; test = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hedis"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Falko Peters";
      maintainer = "falko.peters@gmail.com";
      author = "Falko Peters";
      homepage = "https://github.com/informatikr/hedis";
      url = "";
      synopsis = "Client library for the Redis datastore: supports full command set,\npipelining.";
      description = "Redis is an open source, advanced key-value store. It is often referred to\nas a data structure server since keys can contain strings, hashes, lists,\nsets and sorted sets. This library is a Haskell client for the Redis\ndatastore. Compared to other Haskell client libraries it has some\nadvantages:\n\n[Complete Redis 2.4 command set:] All Redis commands\n(<http://redis.io/commands>) are available as haskell functions, except\nfor the MONITOR and SYNC commands. Additionally, a low-level API is\nexposed that  makes it easy for the library user to implement additional\ncommands, such as new commands from an experimental Redis version.\n\n[Automatic Optimal Pipelining:] Commands are pipelined\n(<http://redis.io/topics/pipelining>) as much as possible without any\nwork by the user. See\n<http://informatikr.com/2012/redis-pipelining.html> for a\ntechnical explanation of automatic optimal pipelining.\n\n[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server\n(<http://redis.io/topics/pubsub>), clients are not allowed to issue\ncommands other than subscribing to or unsubscribing from channels. This\nlibrary uses the type system to enforce the correct behavior.\n\n[Connect via TCP or Unix Domain Socket:] TCP sockets are the default way to\nconnect to a Redis server. For connections to a server on the same\nmachine, Unix domain sockets offer higher performance than the standard\nTCP connection.\n\nFor detailed documentation, see the \"Database.Redis\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      exes = {
        "hedis-benchmark" = {
          depends = (pkgs.lib).optionals (flags.benchmark) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hedis" or (buildDepError "hedis"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        "hedis-test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hedis" or (buildDepError "hedis"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }