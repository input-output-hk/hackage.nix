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
      specVersion = "1.2";
      identifier = {
        name = "iteratee";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "Oleg Kiselyov";
      homepage = "http://inmachina.net/~jwlato/haskell/iteratee";
      url = "";
      synopsis = "Iteratee-based I/O";
      description = "The IterateeGM monad provides strict, safe, and functional\nI/O.  In addition to pure Iteratee processors, file IO and\ncombinator functions are provided.";
      buildType = "Simple";
    };
    components = {
      "iteratee" = {
        depends  = ([
          (hsPkgs.haskell98)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.transformers)
          (hsPkgs.ListLike)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.base)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }