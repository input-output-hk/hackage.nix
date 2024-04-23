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
      specVersion = "1.8";
      identifier = {
        name = "hierarchical-clustering-diagrams";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "";
      url = "";
      synopsis = "Draw diagrams of dendrograms made by hierarchical-clustering.";
      description = "This package contains functions for drawing diagrams of\ndendrograms.  You may see a simple image sample at\n<https://patch-tag.com/r/felipe/hierarchical-clustering-diagrams/snapshot/current/content/pretty/example.png>.\nSee the documentation at \"Diagrams.Dendrogram\" to see how to\nreproduce this diagram.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
        ];
        buildable = true;
      };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hierarchical-clustering-diagrams" or (errorHandler.buildDepError "hierarchical-clustering-diagrams"))
          ];
          buildable = true;
        };
      };
    };
  }