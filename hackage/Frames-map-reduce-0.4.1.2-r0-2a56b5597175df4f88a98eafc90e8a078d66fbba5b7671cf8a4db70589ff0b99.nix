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
      identifier = { name = "Frames-map-reduce"; version = "0.4.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "";
      url = "";
      synopsis = "Frames wrapper for map-reduce-folds and some extra folds helpers.";
      description = "Frames-map-reduce provides some helpers for using the map-reduce-folds library with vinyl records and Frames.\nThese include functions for filtering Frames, splitting records into key columns and data columns and\nrecombining key columns with other columns after reducing.\nThis package also provides some tools for building folds over records from folds over each column,\ne.g, summing multiple numerical columns into a multi-column result.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."map-reduce-folds" or (errorHandler.buildDepError "map-reduce-folds"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
        ];
        buildable = true;
      };
      tests = {
        "AddRowsByLabel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."Frames-map-reduce" or (errorHandler.buildDepError "Frames-map-reduce"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }