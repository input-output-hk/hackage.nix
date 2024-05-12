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
      specVersion = "2.4";
      identifier = { name = "trial-tomland"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2020 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/trial";
      url = "";
      synopsis = "Trial helper functions for tomland";
      description = "@Trial@ data structure related helper functions\nfor [tomland](https://hackage.haskell.org/package/tomland).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          (hsPkgs."trial" or (errorHandler.buildDepError "trial"))
        ];
        buildable = true;
      };
    };
  }