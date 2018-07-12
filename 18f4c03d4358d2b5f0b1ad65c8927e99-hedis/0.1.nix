{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      benchmark = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hedis";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Falko Peters";
        maintainer = "falko.peters@gmail.com";
        author = "Falko Peters";
        homepage = "";
        url = "";
        synopsis = "Client library for the Redis datastore: supports full command set,\npipelining.";
        description = "Redis is an open source, advanced key-value store. It is often referred to\nas a data structure server since keys can contain strings, hashes, lists,\nsets and sorted sets. This library is a Haskell client for the Redis\ndatastore. Compared to other Haskell client libraries it has some\nadvantages:\n\n[Complete Redis 2.4 command set:] All Redis commands\n(<http://redis.io/commands>) are available as haskell functions. The\nexceptions to the rule are a handfull of internal and debugging\ncommands: MONITOR, DEBUG OBJECT, DEBUG SEGFAULT, SYNC. If needed, these\ncommands can easily be implemented by the library user with the\n'sendRequest' function.\n\n[Pipelining \\\"Just Works\\\":] Commands are pipelined\n(<http://redis.io/topics/pipelining>) as much as possible without any\nwork by the user.\n\n[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server\n(<http://redis.io/topics/pubsub>), clients are not allowed to issue\ncommands other than subscribing to or unsubscribing from channels. This\nlibrary uses the type system to enforce the correct behavior.\n\nFor detailed documentation, see the \"Database.Redis\" module.";
        buildType = "Simple";
      };
      components = {
        "hedis" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.mtl
            hsPkgs.network
          ];
        };
        exes = {
          "hedis-benchmark" = {
            depends  = pkgs.lib.optionals (!(!_flags.benchmark)) [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.hedis
              hsPkgs.time
            ];
          };
        };
      };
    }