{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "redis";
          version = "0.13";
        };
        license = "MIT";
        copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
        maintainer = "Alexander Bogdanov <andorn@gmail.com>";
        author = "Alexander Bogdanov <andorn@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A driver for Redis key-value database";
        description = "Caution! This library is currently not supported. If you looking\nfor an alternative, hedis package is a great one. It looks more\ncomplete and more \"functional\" in its nature. If you absolutely\nneed *this* library, please let me know, I'll do my best to help\nyou in any way. On the other hand, if you want to adopt this\nlibrary, do not hesitate and let me know too. Many thanks!\n\n\nRedis (<http://redis.io>) is an open source, BSD licensed, advanced\nkey-value store. It is often referred as a data structure server\nsince keys can contain different data structures, such as strings,\nhashes, lists, sets and sorted sets.\n\nThis library is a Haskell driver for Redis. It's tested with\ncurrent git version and with v2.4.6 of redis server. It also\ntested with v2.2 and basic functions are works correctly\nbut not all of them.\n\nYou can use Test module from the source package to run unit\ntests. Try /runhaskell Test.hs --help/ for usage info. Caution! Do not\nrun tests on your working database - test database will be\nflushed.\n\nThere are simple benchmark module included: Benchmark.hs. It shows\nme about two times less requests per second than redis-benchmark\nfrom server distribution.\n\nPlease let me know if tests or benchmark goes terribly wrong.\n\nChanges from v0.12:\n\n- nothing here";
        buildType = "Simple";
      };
      components = {
        "redis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.MonadCatchIO-mtl
            hsPkgs.concurrent-extra
          ];
        };
      };
    }