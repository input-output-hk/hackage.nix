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
      specVersion = "1.6";
      identifier = { name = "lrucache"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Carl Howells, 2010";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "http://github.com/chowells79/lrucache";
      url = "";
      synopsis = "a simple, pure LRU cache";
      description = "This package contains a simple, pure LRU cache, implemented in\nterms of \"Data.Map\".\n\nIt also contains a mutable IO wrapper providing atomic updates to\nan LRU cache.\n\nVersion History:\n\n1.0 - Breaking API changes:\n1) The newLRU smart constructor now makes the maximum\nsize optional.\n2) The delete function now returns the value removed, if\none was.\nAdditionally, a function was added to remove the least-recently\nused element in the LRU.\n\n0.3 - Added a Show instance for LRU. (Requested by Ben Lee)\n\n0.2.0.1 - Increase strictness slightly.\nRemove cabal target for test executable.\n(Just include test sources instead.)\n\n0.2 - Added an Eq instance for LRU.\nAdded strictness to eliminate space leaks in common use patterns.\n\n0.1.1 - Add the Data.Cache.LRU.IO.Internal module.\nClean up build warnings on GHC 6.12.1.\n\n0.1.0.1 - Minor refactoring\n\n0.1 - First release";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }