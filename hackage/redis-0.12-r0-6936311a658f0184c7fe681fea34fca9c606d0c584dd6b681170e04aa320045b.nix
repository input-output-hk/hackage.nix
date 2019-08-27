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
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "redis"; version = "0.12"; };
      license = "MIT";
      copyright = "Copyright (c) 2009-2010 Alexander Bogdanov";
      maintainer = "Alexander Bogdanov <andorn@gmail.com>";
      author = "Alexander Bogdanov <andorn@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A driver for Redis key-value database";
      description = "Redis (<http://redis.io>) is an open source, BSD licensed, advanced\nkey-value store. It is often referred as a data structure server\nsince keys can contain different data structures, such as strings,\nhashes, lists, sets and sorted sets.\n\nThis library is a Haskell driver for Redis. It's tested with\ncurrent git version and with v2.4.6 of redis server. It also\ntested with v2.2 and v2.0 and basic functions are works correctly\nbut not all of them.\n\nYou can use Test module from the source package to run unit\ntests. Try /runhaskell Test.hs --help/ for usage info. Caution! Do not\nrun tests on your working database - test database will be\nflushed.\n\nThere are simple benchmark module included: Benchmark.hs. It shows\nme about two times less requests per second than redis-benchmark\nfrom server distribution.\n\nPlease let me know if tests or benchmark goes terribly wrong.\n\nChanges from v0.11:\n\n- Drop parsec dependency\n\n- New commands implemented: incrbyfloat and hincrbyfloat\n\n- Added variadic versions of del, hdel, lpush, rpush, sadd, srem,\nzadd, zrem (named as del_, hdel_ etc.)\n\n- Fixed compilation with GHC 7.2 (and hopefully with more recent\nversions too), thanks Ben Gamari and Sean Hess for reporting.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."MonadCatchIO-mtl" or (buildDepError "MonadCatchIO-mtl"))
          ];
        };
      };
    }