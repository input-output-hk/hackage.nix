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
    flags = { test = false; hpc = false; nolib = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "concurrent-extra"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Bas van Dijk & Roel van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Extra concurrency primitives";
      description = "The @concurrent-extra@ package offers among other things the\nfollowing selection of synchronisation primitives:\n\n* @Broadcast@: Wake multiple threads by broadcasting a value.\n\n* @Event@: Wake multiple threads by signalling an event.\n\n* @Lock@: Enforce exclusive access to a resource. Also known as a\nbinary semaphore or mutex.\n\n* @RLock@: A lock which can be acquired multiple times by the same\nthread. Also known as a reentrant mutex.\n\n* @ReadWriteLock@: Multiple-reader, single-writer locks. Used to\nprotect shared resources which may be concurrently read, but only\nsequentially written.\n\n* @ReadWriteVar@: Concurrent read, sequential write variables.\n\nBesides these synchronisation primitives the package also provides:\n\n* @Thread.Delay@: Arbitrarily long thread delays.\n\n* @Timeout@: Wait arbitrarily long for an IO computation to finish.\n\nPlease consult the API documentation of the individual modules for\nmore detailed information.\n\nThis package was inspired by the concurrency libraries of Java and\nPython.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
        ];
        buildable = if flags.nolib then false else true;
      };
      exes = {
        "test-concurrent-extra" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = if flags.test then true else false;
        };
      };
    };
  }