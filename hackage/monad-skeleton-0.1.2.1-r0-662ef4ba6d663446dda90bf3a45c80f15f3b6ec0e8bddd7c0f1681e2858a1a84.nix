{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "monad-skeleton";
        version = "0.1.2.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }