{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "async";
          version = "2.0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Simon Marlow 2012";
        maintainer = "Simon Marlow <marlowsd@gmail.com>";
        author = "Simon Marlow";
        homepage = "https://github.com/simonmar/async";
        url = "";
        synopsis = "Run IO operations asynchronously and wait for their results";
        description = "This package provides a higher-level interface over\nthreads, in which an @Async a@ is a concurrent\nthread that will eventually deliver a value of\ntype @a@.  The package provides ways to create\n@Async@ computations, wait for their results, and\ncancel them.\n\nUsing @Async@ is safer than using threads in two\nways:\n\n* When waiting for a thread to return a result,\nif the thread dies with an exception then the\ncaller must either re-throw the exception\n('wait') or handle it ('waitCatch'); the\nexception cannot be ignored.\n\n* The API makes it possible to build a tree of\nthreads that are automatically killed when\ntheir parent dies (see 'withAsync').\n\nChanges in 2.0.1.5:\n\n* Bump @base@ dependencies for GHC 7.8\n\nChanges in 2.0.1.4:\n\n* Bump @base@ dependency of test suite\n\nChanges in 2.0.1.3:\n\n* Bump @base@ dependency to allow 4.6\n\nChanges in 2.0.1.2:\n\n* Bump @stm@ dependency to 2.4\n\nChanges in 2.0.1.1:\n\n* Safe Haskell support: @Control.Concurrent.Async@ is now @Trustworthy@\n\nChanges in 2.0.1.0:\n\n* Added a @Functor@ instance for @Async@\n\n* Added @asyncBound@, @asyncOn@, @asyncWithUnmask@, @asyncOnWithUnmask@, @withAsyncBound@, @withAsyncOn@, @withAsyncWithUnmask@, @withAsyncOnWithUnmask@.\n\n* Added @mapConcurrently@\n\n* Added @Concurrently@ (with @Applicative@ and @Alternative@ instances)";
        buildType = "Simple";
      };
      components = {
        async = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
        tests = {
          test-async = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }