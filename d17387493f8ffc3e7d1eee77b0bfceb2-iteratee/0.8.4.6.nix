{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "iteratee";
          version = "0.8.4.6";
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
        iteratee = {
          depends  = [
            hsPkgs.base
            hsPkgs.ListLike
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.parallel
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        tests = {
          testIteratee = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.iteratee
              hsPkgs.ListLike
              hsPkgs.parallel
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }