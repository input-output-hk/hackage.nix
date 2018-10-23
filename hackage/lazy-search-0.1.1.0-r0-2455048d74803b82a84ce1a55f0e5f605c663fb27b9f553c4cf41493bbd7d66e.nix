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
        name = "lazy-search";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonas.duregard@chalmers.se";
      author = "Jonas Duregard";
      homepage = "";
      url = "";
      synopsis = "Finds values satisfying a lazy predicate";
      description = "This library can be used as a property based testing driver, and more\ngenerally to find values satisfying a predicate (@a -> Bool@). This\nis done by a size bounded search, and it uses the laziness of the\npredicate to speed up the search by avoiding isomorphic values.\n\nThis is similar to \"LazySmallCheck\" but uses size instead of depth\nand a faster algorithm.";
      buildType = "Simple";
    };
    components = {
      "lazy-search" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.size-based)
        ];
      };
    };
  }