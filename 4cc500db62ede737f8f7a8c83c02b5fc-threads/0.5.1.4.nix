{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "threads";
          version = "0.5.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "2010–2012 Bas van Dijk & Roel van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
        homepage = "https://github.com/basvandijk/threads";
        url = "";
        synopsis = "Fork threads and wait for their result";
        description = "This package provides functions to fork threads and\nwait for their result, whether it's an exception or a\nnormal value.\n\nBesides waiting for the termination of a single thread\nthis packages also provides functions to wait for a\ngroup of threads to terminate.\n\nThis package is similar to the\n@threadmanager@, @async@ and @spawn@ packages.\nThe advantages of this package are:\n\n* Simpler API.\n\n* More efficient in both space and time.\n\n* No space-leak when forking a large number of threads.\n\n* Correct handling of asynchronous exceptions.\n\n* GHC specific functionality like @forkOn@ and @forkIOWithUnmask@.";
        buildType = "Custom";
      };
      components = {
        threads = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
        tests = {
          test-threads = {
            depends  = [
              hsPkgs.threads
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.concurrent-extra
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }