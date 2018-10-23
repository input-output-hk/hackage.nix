{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "iteratee";
        version = "0.8.7.6";
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
          (hsPkgs.base)
          (hsPkgs.ListLike)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.parallel)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "testIteratee" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }