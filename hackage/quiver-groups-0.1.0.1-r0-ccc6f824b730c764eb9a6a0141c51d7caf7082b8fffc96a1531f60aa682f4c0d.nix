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
      identifier = { name = "quiver-groups"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Group and chunk values within a Quiver";
      description = "Customisable Quiver grouping and chunking functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."quiver" or (errorHandler.buildDepError "quiver"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."quiver-groups" or (errorHandler.buildDepError "quiver-groups"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quiver" or (errorHandler.buildDepError "quiver"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }