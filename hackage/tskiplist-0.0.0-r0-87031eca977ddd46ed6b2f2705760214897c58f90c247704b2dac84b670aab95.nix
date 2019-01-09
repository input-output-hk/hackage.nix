{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "tskiplist"; version = "0.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2010";
      homepage = "http://darcs.monoid.at/tskiplist";
      url = "";
      synopsis = "A Skip List Implementation in STM";
      description = "This package provides an implementation of a skip list in STM.\nA skip list is a probabilistic data structure with map-like operations. In\ncontrast to a balanced tree, a skip list does not need any (expensive)\nrebalancing operation, which makes it particularly suitable for concurrent\nprogramming. See: William Pugh. Skip Lists: A Probabilistic Alternative to\nBalanced Trees. 1990.\n\nFeedback appreciated!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.containers)
          ];
        };
      };
    }