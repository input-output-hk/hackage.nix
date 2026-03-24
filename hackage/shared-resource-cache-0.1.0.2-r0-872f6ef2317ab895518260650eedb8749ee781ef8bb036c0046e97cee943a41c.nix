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
      specVersion = "1.12";
      identifier = { name = "shared-resource-cache"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2026 Gordon Martin";
      maintainer = "gordonhughmartin@gmail.com";
      author = "Gordon Martin";
      homepage = "https://github.com/happy0/shared-resource-cache#readme";
      url = "";
      synopsis = "A thread-safe cache for sharing resources across threads with automatic expiry";
      description = "A cache designed for guaranteeing that different threads can share the same reference to a resource. For example, it allows threads to communicate via a shared\n<<https://hackage.haskell.org/package/stm-2.5.3.1/docs/Control-Concurrent-STM-TChan.html TChan broadcast channel>>.\nUsing <<https://hackage.haskell.org/package/resourcet resourcet>>, items are only removed from the cache after no 'sharers' are holding the\nresource and the item has expired (according to the expiry configuration the cache was constructed with.)\n\nNote: an MVar is used to coordinate between threads that only one thread does the initial load of the resource with the given IO action if multiple\nthreads try and retrieve a resource that is not yet cached at the same time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "shared-resource-cache-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."shared-resource-cache" or (errorHandler.buildDepError "shared-resource-cache"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }