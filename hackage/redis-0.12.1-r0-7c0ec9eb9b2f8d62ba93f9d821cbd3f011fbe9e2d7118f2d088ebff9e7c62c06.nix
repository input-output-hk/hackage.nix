{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "redis";
        version = "0.12.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
      maintainer = "Alexander Bogdanov <andorn@gmail.com>";
      author = "Alexander Bogdanov <andorn@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A driver for Redis key-value database";
      description = "Redis (<http://redis.io>) is an open source, BSD licensed, advanced\nkey-value store. It is often referred as a data structure server\nsince keys can contain different data structures, such as strings,\nhashes, lists, sets and sorted sets.\n\nThis library is a Haskell driver for Redis. It's tested with\ncurrent git version and with v2.4.6 of redis server. It also\ntested with v2.2 and basic functions are works correctly\nbut not all of them.\n\nYou can use Test module from the source package to run unit\ntests. Try /runhaskell Test.hs --help/ for usage info. Caution! Do not\nrun tests on your working database - test database will be\nflushed.\n\nThere are simple benchmark module included: Benchmark.hs. It shows\nme about two times less requests per second than redis-benchmark\nfrom server distribution.\n\nPlease let me know if tests or benchmark goes terribly wrong.\n\nChanges from v0.11:\n\n- Drop parsec dependency\n\n- New commands implemented: incrbyfloat and hincrbyfloat\n\n- Added variadic versions of del, hdel, lpush, rpush, sadd, srem,\nzadd, zrem (named as del_, hdel_ etc.)\n\n- Fixed compilation with GHC 7.2 (and hopefully with more recent\nversions too), thanks Ben Gamari and Sean Hess for reporting.\n\n- Using RLock from concurrent-extra fixes multithreading issues,\nthanks Dmitry Dzhus for reporting\n\n- Hopefully, fix building on Windows (untested), thanks Piotr\nStaszewski and Alexander Dorofeev\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.concurrent-extra)
        ];
      };
    };
  }