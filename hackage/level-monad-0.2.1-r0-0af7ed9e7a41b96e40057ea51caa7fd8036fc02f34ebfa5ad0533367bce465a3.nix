{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "level-monad";
        version = "0.2.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Sebastian Fischer";
      homepage = "http://github.com/sebfisch/level-monad";
      url = "";
      synopsis = "Non-Determinism Monad for Level-Wise Search";
      description = "This Haskell library provides an implementation of the\nMonadPlus type class that enumerates the levels of the\nsearch space and allows to implement breadth-first\nsearch.";
      buildType = "Simple";
    };
    components = {
      "level-monad" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }