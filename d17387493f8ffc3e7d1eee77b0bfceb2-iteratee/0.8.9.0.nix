{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "iteratee";
          version = "0.8.9.0";
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
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.parallel
            hsPkgs.transformers
            hsPkgs.transformers-base
          ] ++ pkgs.lib.optionals (!system.isWindows) [
            hsPkgs.unix
            hsPkgs.unix-bytestring
          ];
        };
        exes = {
          "testIteratee" = {
            depends  = pkgs.lib.optionals _flags.buildtests [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }