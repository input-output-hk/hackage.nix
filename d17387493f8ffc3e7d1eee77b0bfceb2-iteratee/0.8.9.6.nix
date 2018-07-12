{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iteratee";
          version = "0.8.9.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato <jwlato@gmail.com>";
        author = "Oleg Kiselyov, John W. Lato";
        homepage = "http://www.tiresiaspress.us/haskell/iteratee";
        url = "";
        synopsis = "Iteratee-based I/O";
        description = "The Iteratee monad provides strict, safe, and functional I/O. In addition\nto pure Iteratee processors, file IO and combinator functions are provided.\nSee @Data.Iteratee@ for full documentation.";
        buildType = "Simple";
      };
      components = {
        "iteratee" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ListLike
            hsPkgs.monad-control
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.parallel
            hsPkgs.transformers
            hsPkgs.transformers-base
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        tests = {
          "testIteratee" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.iteratee
              hsPkgs.exceptions
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.ListLike
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
        benchmarks = {
          "bench-all" = {
            depends  = [
              hsPkgs.iteratee
              hsPkgs.bytestring
              hsPkgs.monad-control
              hsPkgs.exceptions
              hsPkgs.mtl
              hsPkgs.ListLike
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.mtl
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }