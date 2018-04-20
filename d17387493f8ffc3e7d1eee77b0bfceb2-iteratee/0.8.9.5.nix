{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iteratee";
          version = "0.8.9.5";
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
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.monad-control
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.parallel
            hsPkgs.transformers
            hsPkgs.transformers-base
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }