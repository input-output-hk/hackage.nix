{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "redis"; version = "0.13.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
      maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
      author = "Alexander Bogdanov <andorn@gmail.com>";
      homepage = "http://hub.darcs.net/ganesh/redis";
      url = "";
      synopsis = "A driver for Redis key-value database";
      description = "This library is deprecated in favour of the hedis package,\nbut minor patches to keep it building etc will be applied.\n\n\nRedis (<http://redis.io>) is an open source, BSD licensed, advanced\nkey-value store. It is often referred as a data structure server\nsince keys can contain different data structures, such as strings,\nhashes, lists, sets and sorted sets.\n\nThis library is a Haskell driver for Redis. It's tested with\ncurrent git version and with v2.4.6 of redis server. It also\ntested with v2.2 and basic functions are works correctly\nbut not all of them.\n\nYou can use Test module from the source package to run unit\ntests. Try /runhaskell Test.hs --help/ for usage info. Caution! Do not\nrun tests on your working database - test database will be\nflushed.\n\nThere are simple benchmark module included: Benchmark.hs. It shows\nme about two times less requests per second than redis-benchmark\nfrom server distribution.\n\nPlease let me know if tests or benchmark goes terribly wrong.\n\nChanges from v0.12:\n\n- nothing here";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."MonadCatchIO-mtl" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-mtl"))
          (hsPkgs."concurrent-extra" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-extra"))
          ];
        buildable = true;
        };
      };
    }