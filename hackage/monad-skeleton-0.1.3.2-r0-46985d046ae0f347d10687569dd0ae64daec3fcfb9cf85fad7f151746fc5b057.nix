{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "monad-skeleton";
        version = "0.1.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/monad-skeleton";
      url = "";
      synopsis = "Monads of program skeleta";
      description = "Fast operational monad library";
      buildType = "Simple";
    };
    components = {
      "monad-skeleton" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }