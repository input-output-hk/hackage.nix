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
      specVersion = "2.2";
      identifier = { name = "convexHullNd"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2023 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/convexHullNd#readme";
      url = "";
      synopsis = "Convex hull";
      description = "Computes the convex hull of a set of points in arbitrary dimension.\n\nThis library uses the C library 'qhull'.\n\nFor examples, look at the README file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."insert-ordered-containers" or (errorHandler.buildDepError "insert-ordered-containers"))
          (hsPkgs."Unique" or (errorHandler.buildDepError "Unique"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          ];
        buildable = true;
        };
      };
    }