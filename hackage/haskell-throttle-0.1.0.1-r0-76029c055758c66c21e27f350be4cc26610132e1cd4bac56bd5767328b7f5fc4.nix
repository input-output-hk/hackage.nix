{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "haskell-throttle"; version = "0.1.0.1"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "pk@intrepidus.pl";
      author = "Przemysław Kamiński";
      homepage = "https://gitlab.iscpif.fr/gargantext/haskell-throttle";
      url = "";
      synopsis = "A simple throttling library, which drops messages from same group.";
      description = "A [throttle](https://en.wikipedia.org/wiki/Rate_limiting)\nimplementation using\n[Control.Concurrent.STM.TChan](https://hackage.haskell.org/package/stm-2.5.3.1/docs/Control-Concurrent-STM-TChan.html).\n\n== Rationale\n\nCurrent Haskell throttle implementations\n(e.g. [Data.Conduit.Throttle](https://hackage.haskell.org/package/conduit-throttle-0.3.1.0/docs/Data-Conduit-Throttle.html)\nor [io-throttle](https://hackage.haskell.org/package/io-throttle))\nwork by just __slowing down__ incoming messages. However, sometimes we\ndon't care about delivering __all__ messages, but just want to limit\ntheir rate. Hence this module is born.\n\nThe main function is in\n[Control.Concurrent.Throttle](./src/Control/Concurrent/Throttle.hs):\n\n  throttle :: (Ord id, Eq id, Show id) => Int -> TChan.TChan (id, a) -> (a -> IO ()) -> IO ()\n\nIt takes as arguments:\n\n* resolution (in milliseconds)\n* a ``TChan`` where `(id, a)` tuples are sent\n* ``action`` which, for given ``a`` calls some ``IO`` action\n\nIn the above we have 2 types:\n\n* ``a`` represents the incoming message which will be called with the supplied `action`\n* ``id`` represents some identifier associated with the message. By\n  using this ``id`` we can perform grouping of messages and throttle\n  them accordingly.\n\nThe ``throttle`` function itself should be spawned in a separate\nthread. It then awaits for incoming messages on the given `TChan`.\n\nSee [test directory](./test) for a sample usage.\n\n== Design\n\nCurrently, the ``throttle`` function spawns a ``mapCleaner`` thread\nwhich, periodically, checks the internal ``TVar`` value for values to\nclean up and values to hold before the given delay happens.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "haskell-trottle-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-trottle" or (errorHandler.buildDepError "haskell-trottle"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }