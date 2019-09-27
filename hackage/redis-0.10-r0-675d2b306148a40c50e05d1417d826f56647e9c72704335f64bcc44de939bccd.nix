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
      identifier = { name = "redis"; version = "0.10"; };
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
        buildable = true;
        };
      };
    }