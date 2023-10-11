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
      specVersion = "3.0";
      identifier = { name = "FiniteCategoriesGraphViz"; version = "0.2.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "guillaumesabbagh@protonmail.com";
      author = "Guillaume Sabbagh";
      homepage = "https://gitlab.utc.fr/gsabbagh/FiniteCategoriesGraphViz";
      url = "";
      synopsis = "Transform objects of the package FiniteCategories into graphs using GraphViz.";
      description = "A way to visualize finite categories of the package FiniteCategories thanks to GraphViz. See FiniteCategories for examples of categories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."WeakSets" or (errorHandler.buildDepError "WeakSets"))
          (hsPkgs."FiniteCategories" or (errorHandler.buildDepError "FiniteCategories"))
          ];
        buildable = true;
        };
      tests = {
        "FiniteCategories-test" = {
          depends = [
            (hsPkgs."FiniteCategoriesGraphViz" or (errorHandler.buildDepError "FiniteCategoriesGraphViz"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."WeakSets" or (errorHandler.buildDepError "WeakSets"))
            (hsPkgs."FiniteCategories" or (errorHandler.buildDepError "FiniteCategories"))
            ];
          buildable = true;
          };
        };
      };
    }