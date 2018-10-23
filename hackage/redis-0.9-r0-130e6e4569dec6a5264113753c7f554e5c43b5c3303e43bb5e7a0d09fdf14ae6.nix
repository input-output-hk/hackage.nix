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
        version = "0.9";
      };
      license = "MIT";
      copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
      maintainer = "Alexander Bogdanov <andorn@gmail.com>";
      author = "Alexander Bogdanov <andorn@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A driver for Redis key-value database";
      description = "Redis is an advanced key-value store. It is similar to memcached\nbut the dataset is not volatile. Values can be strings, exactly\nlike in memcached, but also lists, sets, and ordered sets.\n\nThis library is a Haskell driver for Redis. Note that this library\nsupports the most recent (actually the git one) version of Redis\nprotocol. Most of the functions will work correctly with stable version\nbut not all.\n\nChanges from v0.8:\n\n- Now it's able to connect Redis using unix sockets. To do so just\ncall /connect/ with path to socket as first argument and empty\nsecond argument.\n";
      buildType = "Simple";
    };
    components = {
      "redis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.MonadCatchIO-mtl)
        ];
      };
    };
  }