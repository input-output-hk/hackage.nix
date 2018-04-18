{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tdd-util";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 Byron James Johnson";
        maintainer = "Byron James Johnson <ByronJohnsonFP@gmail.com>";
        author = "Byron James Johnson";
        homepage = "";
        url = "";
        synopsis = "Utilities for TDD with test-framework, HUnit, and QuickCheck";
        description = "This library provides utility functions for TDD in the manner of \"MissingH\".\n\nThis package contains a test suite that is an excellent example of using\nthis library and may be cargo culted to save time starting TDD on a new\nproject.";
        buildType = "Simple";
      };
      components = {
        tdd-util = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.transformers
            hsPkgs.tagged
            hsPkgs.random
            hsPkgs.process
            hsPkgs.time
            hsPkgs.parallel-io
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
          ];
        };
        tests = {
          tdd-util-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.transformers
              hsPkgs.tagged
              hsPkgs.random
              hsPkgs.process
              hsPkgs.time
              hsPkgs.parallel-io
              hsPkgs.MonadCatchIO-transformers
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