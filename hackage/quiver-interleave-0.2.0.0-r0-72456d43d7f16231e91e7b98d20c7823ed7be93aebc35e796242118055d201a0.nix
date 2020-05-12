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
      identifier = { name = "quiver-interleave"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Interleave values from multiple Quivers";
      description = "Combine multiple Quivers into one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."quiver" or (errorHandler.buildDepError "quiver"))
          ];
        buildable = true;
        };
      tests = {
        "interleave-tests" = {
          depends = [
            (hsPkgs."quiver-interleave" or (errorHandler.buildDepError "quiver-interleave"))
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