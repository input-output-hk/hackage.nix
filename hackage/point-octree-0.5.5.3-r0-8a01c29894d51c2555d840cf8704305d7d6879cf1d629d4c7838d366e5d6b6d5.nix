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
      identifier = { name = "point-octree"; version = "0.5.5.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2012, Copyright by Michael Litchard '2016";
      maintainer = "michael@schmong.org";
      author = "Michal J. Gajda, Michael Litchard";
      homepage = "https://github.com/mlitchard/point-octree";
      url = "http://hackage.haskell.org/package/point-octree";
      synopsis = "Point octree, with bounding boxes";
      description = "Based on Michal J. Gajda's octree package, but with bounding boxes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "test_Octree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
          ];
          buildable = true;
        };
        "readme-BB" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
          ];
          buildable = true;
        };
      };
    };
  }