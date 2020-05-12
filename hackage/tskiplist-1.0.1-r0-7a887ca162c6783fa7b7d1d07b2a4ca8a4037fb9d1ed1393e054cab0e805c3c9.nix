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
      specVersion = "1.12";
      identifier = { name = "tskiplist"; version = "1.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "2010-2019 Peter Robinson";
      maintainer = "peter.robinson@monoid.at";
      author = "Peter Robinson";
      homepage = "https://github.com/pwrobinson/tskiplist#readme";
      url = "";
      synopsis = "A Skip List Implementation in Software Transactional Memory (STM)";
      description = "This package provides a proof-of-concept implementation of a skip list in STM. A skip list is a probabilistic data structure with dictionary operations and support for efficient range-queries (similarly to Data.Map). In contrast to tree data structures, a skip list does not need any rebalancing, which makes it particularly suitable for concurrent programming. (See: William Pugh. Skip Lists: A Probabilistic Alternative to Balanced Trees.) ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }