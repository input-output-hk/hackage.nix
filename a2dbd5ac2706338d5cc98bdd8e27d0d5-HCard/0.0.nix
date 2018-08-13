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
        name = "HCard";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfredett@gmail.com";
      author = "Joe Fredette";
      homepage = "http://patch-tag.com/publicrepos/HCard";
      url = "http://patch-tag.com/publicrepos/HCard";
      synopsis = "A library for implementing a Deck of Cards";
      description = "HCard provides a standard interface to a deck of cards -- providing shuffling, permutation irrelevant equality of hands, etc.";
      buildType = "Simple";
    };
    components = {
      "HCard" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random-shuffle)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }