{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "discrete-space-map";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/discrete-space-map";
      url = "";
      synopsis = "A discrete space map.";
      description = "A discrete space map implemented as a zipper on an infinite perfect binary tree.";
      buildType = "Simple";
    };
    components = {
      "discrete-space-map" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.keys)
          (hsPkgs.distributive)
          (hsPkgs.semigroupoids)
          (hsPkgs.adjunctions)
        ];
      };
    };
  }