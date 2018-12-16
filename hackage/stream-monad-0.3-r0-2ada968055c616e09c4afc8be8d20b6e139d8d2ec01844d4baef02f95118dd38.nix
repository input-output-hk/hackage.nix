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
      specVersion = "1.6";
      identifier = {
        name = "stream-monad";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastian Fischer (sebf@informatik.uni-kiel.de)";
      author = "Oleg Kiselyov, Sebastian Fischer";
      homepage = "http://github.com/sebfisch/stream-monad";
      url = "";
      synopsis = "Simple, Fair and Terminating Backtracking Monad";
      description = "This Haskell library provides an implementation of the\nMonadPlus type class that enumerates results of a\nnon-deterministic computation by interleaving\nsubcomputations in a way that has usually much better\nmemory performance than other strategies with the same\ntermination properties.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }