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
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "simple-atom"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Koen Claessen, Niklas Sorensson";
      homepage = "http://github.com/nominolo/simple-atom";
      url = "";
      synopsis = "Atom (or symbol) datatype for fast comparision and sorting.";
      description = "This module provides an abstract datatype for atoms, such that:\n\n* Each atom string is only in memory once\n\n* @O(n)@ creation time\n\n* @O(1)@ equality-comparison\n\n* @O(1)@ (in practice) ord-comparison\n\n* @Ord@-comparison results are independent on evaluation order\n\nThis module is thread-safe.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (flags.debug) (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"));
        buildable = true;
      };
    };
  }