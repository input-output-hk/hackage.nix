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
      identifier = { name = "astar"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2008 Cale Gibbard\n2016 Johannes Weiss";
      maintainer = "public@tux4u.de";
      author = "Cale Gibbard, Johannes Weiss";
      homepage = "https://github.com/weissi/astar";
      url = "";
      synopsis = "General A* search algorithm.";
      description = "This is a data-structure independent implementation of A* search.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }