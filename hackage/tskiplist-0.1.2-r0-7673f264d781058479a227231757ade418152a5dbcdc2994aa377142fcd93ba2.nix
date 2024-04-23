{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "tskiplist"; version = "0.1.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }