{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      hpc = false;
      nolib = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "concurrent-extra";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Bas van Dijk & Roel van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Extra concurrency primitives";
        description = "The @concurrent-extra@ package offers among other things the\nfollowing selection of synchronisation primitives:\n\n* @Lock@: Enforce exclusive access to a resource. Also known as a\nbinary semaphore or mutex.\n\n* @RLock@: A lock which can be acquired multiple times by the same\nthread. Also known as a reentrant mutex.\n\n* @Broadcast@: Wake multiple threads by broadcasting a value.\n\n* @Event@: Wake multiple threads by signalling an event.\n\n* @ReadWriteLock@: Multiple-reader, single-writer locks. Used to\nprotect shared resources which may be concurrently read, but only\nsequentially written.\n\n* @ReadWriteVar@: Concurrent read, sequential write variables.\n\nThe package also provides @STM@ versions of @Broadcast@ and @Event@.\n\nBesides these synchronisation primitives the package provides:\n\n* @Thread@: Threads extended with the ability to wait for their\ntermination.\n\n* @delay@: Arbitrarily long thread delays.\n\n* @timeout@: Wait arbitrarily long for an IO computation to finish.\n\nPlease consult the API documentation of the individual modules for\nmore detailed information.\n\nThis package was inspired by the concurrency libraries of Java and\nPython.";
        buildType = "Custom";
      };
      components = {
        concurrent-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.stm
          ];
        };
        exes = {
          test-concurrent-extra = {
            depends  = optionals _flags.test [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }