{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "redis";
          version = "0.10";
        };
        license = "MIT";
        copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
        maintainer = "Alexander Bogdanov <andorn@gmail.com>";
        author = "Alexander Bogdanov <andorn@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A driver for Redis key-value database";
        description = "Redis (<http://redis.io>) is an open source, BSD licensed, advanced\nkey-value store. It is often referred as a data structure server\nsince keys can contain different data structures, such as strings,\nhashes, lists, sets and sorted sets.\n\nThis library is a Haskell driver for Redis. Note that this library\nsupports the most recent (actually the git one) version of\nRedis. Most of the functions will work correctly with stable\nversion but not all.\n\nChanges from v0.9:\n\n- New commands implemented: echo, linsert, zrevrangebyscore,\nlpushx and rpushx\n\n- blpop and brpop has changed their types: it's now IO (Maybe (s1,\ns2)) instead of IO (Reply s2). Warning! It's backward\nincompatible!\n\n- New helpers fromRBulk' and fromRMultiBulk' which not only\nunwraps RBulk and RMulti replies but also (unsafely) unwraps\n/Maybes/ inside it.\n\n- Now it's posible to use Redis renamed commands (config option\n/rename-command/). You just have to call /renameCommand/ to make\nclient configuration the same as the server one.\n\n- Type of run_multi changed. The second param is now (Redis -> IO\na) action instead of list of IO (Reply ()). Warning! It's\nbackward incompatible!\n\n- Type of run_cas changed too. The third param is now (Redis -> IO\na) action instead of IO (Reply ()). Warning! It's backward\nincompatible!\n\n- Most of the protocol functions is now covered with tests (and\nall tests are passed with the most recent Redis version). You\nmay run it using something like \\\"runhaskell Test.hs\n\\<path-to-your-redis-binary\\>\\\". \\*Warning!\\* Don't do that if you\nhave running redis instance on the default port and host! All\ndata in databases 0 and 1 will be lost!\n";
        buildType = "Simple";
      };
      components = {
        redis = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.MonadCatchIO-mtl
          ];
        };
      };
    }