{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tskiplist"; version = "1.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2010-2014";
      homepage = "https://github.com/thaldyron/tskiplist";
      url = "";
      synopsis = "A Skip List Implementation in Software Transactional Memory (STM)";
      description = "This package provides an implementation of a skip list in STM.\nA skip list is a probabilistic data structure with dictionary\noperations and support for efficient range-queries (similarly to /Data.Map/). In contrast\nto tree data structures, a skip list does not need any rebalancing, which makes it particularly\nsuitable for concurrent programming. See: William Pugh. Skip Lists: A\nProbabilistic Alternative to Balanced Trees.\n\nFeedback appreciated!";
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