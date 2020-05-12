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
      identifier = { name = "group-with"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ukoehler@techoverflow.net";
      author = "Uli Köhler";
      homepage = "https://github.com/ulikoehler/group-with";
      url = "";
      synopsis = "Classify objects by key-generating function, like SQL GROUP BY";
      description = "A library to classify objects into multimaps by using a function generating\nkeys for any object in the list.\nThis allows an approach similar to SQL GROUP BY.\nProvides a more flexible approach to `GHC.Exts.groupWith`.";
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
      tests = {
        "test-groupby" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }