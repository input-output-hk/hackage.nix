{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "redis";
        version = "0.11";
      };
      license = "MIT";
      copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
      maintainer = "Alexander Bogdanov <andorn@gmail.com>";
      author = "Alexander Bogdanov <andorn@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A driver for Redis key-value database";
      description = "Redis (<http://redis.io>) is an open source, BSD licensed, advanced\nkey-value store. It is often referred as a data structure server\nsince keys can contain different data structures, such as strings,\nhashes, lists, sets and sorted sets.\n\nThis library is a Haskell driver for Redis. It's tested with\ncurrent git version and with v2.2.4 of redis server. It also\ntested with v2.0.5 and basic functions are works correctly but not\nall of them.\n\nYou can use Test module from the source package to run unit\ntests. Try /runhaskell Test.hs --help/ for usage info. Caution! Do not\nrun tests on your working database - test database will be\nflushed.\n\nThere are simple benchmark module included: Benchmark.hs. It shows\nme about two times less requests per second than redis-benchmark\nfrom server distribution.\n\nPlease let me know if tests or benchmark goes terribly wrong.\n\nChanges from v0.10:\n\n- Simple optimisation of redis protocol replays parsing that leads to\nsignificant speed improvement on get-like commands\n\n- New commandline options for test runner (see above)\n\n- Simple benchmark included (see above)\n\n- New commands implemented: brpoplpush (blocking rpoplpush),\ngetrange, setrange, getbit and setbit\n\n- getType reply is now parsed into RedisKeyType datatype instead\nof just returning Reply. Warning! It's backward incompatible!\n\n- info reply is now parsed into Map String String. Warning! It's\nbackward incompatible!\n";
      buildType = "Simple";
    };
    components = {
      "redis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.parsec)
        ];
      };
    };
  }