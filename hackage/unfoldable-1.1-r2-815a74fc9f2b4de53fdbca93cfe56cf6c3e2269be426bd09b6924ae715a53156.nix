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
      specVersion = "3.6";
      identifier = { name = "unfoldable"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/unfoldable";
      url = "";
      synopsis = "Class of data structures that can be unfolded.";
      description = "Just as there's a Foldable class, there should also be an Unfoldable class.\nThis package provides one. Example unfolds are:\n\n* Random values\n* Enumeration of all values (depth-first or breadth-first)\n* Convert from a list\n\nSome examples can be found in the examples directory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."one-liner" or (errorHandler.buildDepError "one-liner"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
    };
  }