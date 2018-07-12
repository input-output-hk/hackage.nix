{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "iteratee";
          version = "0.8.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato <jwlato@gmail.com>";
        author = "Oleg Kiselyov, John W. Lato";
        homepage = "http://inmachina.net/~jwlato/haskell/iteratee";
        url = "";
        synopsis = "Iteratee-based I/O";
        description = "The Iteratee monad provides strict, safe, and functional I/O. In addition\nto pure Iteratee processors, file IO and combinator functions are provided.";
        buildType = "Simple";
      };
      components = {
        "iteratee" = {
          depends  = ([
            hsPkgs.ListLike
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.transformers
          ] ++ [
            hsPkgs.base
          ]) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        exes = {
          "testIteratee" = {
            depends  = pkgs.lib.optionals _flags.buildtests [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }