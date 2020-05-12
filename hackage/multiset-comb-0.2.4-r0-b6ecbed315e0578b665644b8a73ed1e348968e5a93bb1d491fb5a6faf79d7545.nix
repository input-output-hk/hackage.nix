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
      specVersion = "1.10";
      identifier = { name = "multiset-comb"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Brent Yorgey";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Combinatorial algorithms over multisets";
      description = "Various combinatorial algorithms over multisets,\nincluding generating all permutations,\npartitions, size-2 partitions, size-k subsets,\nnecklaces, and bracelets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }