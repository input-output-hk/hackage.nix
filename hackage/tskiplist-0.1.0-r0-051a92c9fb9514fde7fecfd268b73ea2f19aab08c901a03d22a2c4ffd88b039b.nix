{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "tskiplist";
        version = "0.1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2010-2012";
      homepage = "http://darcs.monoid.at/tskiplist";
      url = "";
      synopsis = "A Skip List Implementation in STM";
      description = "This package provides an implementation of a skip list in STM.\nA skip list is a probabilistic data structure with dictionary\noperations (similarly to Data.Map). In contrast to a balanced tree, a\nskip list does not need any rebalancing, which makes it particularly\nsuitable for concurrent programming. See: William Pugh.  Skip Lists: A\nProbabilistic Alternative to Balanced Trees.\n\nFeedback appreciated!";
      buildType = "Simple";
    };
    components = {
      "tskiplist" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }