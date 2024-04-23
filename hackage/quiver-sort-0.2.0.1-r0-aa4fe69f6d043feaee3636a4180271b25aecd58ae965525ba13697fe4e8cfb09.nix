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
      identifier = { name = "quiver-sort"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Sort the values in a quiver";
      description = "Allows sorting values within a Quiver, including using external\nfiles for large/long pipelines.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."quiver" or (errorHandler.buildDepError "quiver"))
          (hsPkgs."quiver-binary" or (errorHandler.buildDepError "quiver-binary"))
          (hsPkgs."quiver-bytestring" or (errorHandler.buildDepError "quiver-bytestring"))
          (hsPkgs."quiver-groups" or (errorHandler.buildDepError "quiver-groups"))
          (hsPkgs."quiver-instances" or (errorHandler.buildDepError "quiver-instances"))
          (hsPkgs."quiver-interleave" or (errorHandler.buildDepError "quiver-interleave"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "sorting-tests" = {
          depends = [
            (hsPkgs."quiver-sort" or (errorHandler.buildDepError "quiver-sort"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."quiver" or (errorHandler.buildDepError "quiver"))
            (hsPkgs."quiver-instances" or (errorHandler.buildDepError "quiver-instances"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }