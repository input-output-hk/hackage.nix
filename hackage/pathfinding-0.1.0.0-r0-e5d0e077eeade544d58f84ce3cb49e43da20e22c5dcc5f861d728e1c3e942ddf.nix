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
      identifier = { name = "pathfinding"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "vion.remi@gmail.com";
      author = "Rémi Vion";
      homepage = "https://github.com/rvion/pathfinding";
      url = "";
      synopsis = "pathfinding in grid and graphs";
      description = "pathfinding in grid and graphs";
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
    };
  }