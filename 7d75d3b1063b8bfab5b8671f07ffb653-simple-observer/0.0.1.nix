{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "simple-observer";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Andy Gimblett <haskell@gimbo.org.uk>";
      maintainer = "Andy Gimblett <haskell@gimbo.org.uk>";
      author = "Andy Gimblett <haskell@gimbo.org.uk>";
      homepage = "http://github.com/gimbo/observer.hs";
      url = "";
      synopsis = "The Observer pattern";
      description = "This is a simple Haskell implementation of the Observer pattern,\nspecified as a typeclass with one example instance (demonstrating\nsynchronous notifications).\nIt is based on Observable.hs by Bastiaan Heeren, originally from\n<http://www.cs.uu.nl/wiki/bin/view/Afp0607/ExerciseWXHaskell>";
      buildType = "Simple";
    };
    components = {
      "simple-observer" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }