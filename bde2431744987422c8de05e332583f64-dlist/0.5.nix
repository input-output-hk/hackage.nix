{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      applicative-in-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "dlist";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2006-9 Don Stewart";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/dlist/";
      url = "";
      synopsis = "Differences lists";
      description = "Differences lists: a list-like type supporting O(1) append.\nThis is particularly useful for efficient logging and pretty\nprinting, (e.g. with the Writer monad), where list append\nquickly becomes too expensive.";
      buildType = "Simple";
    };
    components = {
      "dlist" = {
        depends  = [
          (hsPkgs.base)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }