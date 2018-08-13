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
      specVersion = "1.10";
      identifier = {
        name = "monad-skeleton";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/monad-skeleton";
      url = "";
      synopsis = "An undead monad";
      description = "A simple operational monad based on Reflection without Remorse";
      buildType = "Simple";
    };
    components = {
      "monad-skeleton" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }