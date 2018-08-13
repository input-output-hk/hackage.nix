{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
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
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John W. Lato <jwlato@gmail.com>";
      author = "Oleg Kiselyov";
      homepage = "http://inmachina.net/~jwlato/haskell/iteratee";
      url = "";
      synopsis = "Iteratee-based I/O";
      description = "The IterateeGM monad provides strict, safe, and functional I/O. In addition\nto pure Iteratee processors, file IO and combinator functions are provided.";
      buildType = "Simple";
    };
    components = {
      "iteratee" = {
        depends  = ([
          (hsPkgs.ListLike)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.haskell98)
          (hsPkgs.transformers)
        ] ++ [
          (hsPkgs.base)
        ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "testIteratee" = {
          depends  = pkgs.lib.optionals (_flags.buildtests) [
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ] ++ [ (hsPkgs.base) ];
        };
      };
    };
  }