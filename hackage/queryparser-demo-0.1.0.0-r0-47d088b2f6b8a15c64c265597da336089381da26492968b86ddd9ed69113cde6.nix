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
      identifier = { name = "queryparser-demo"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "heli@uber.com";
      author = "Heli Wang, David Thomas, Matt Halverson";
      homepage = "";
      url = "";
      synopsis = "Demo package containing queryparser examples";
      description = "Library containing sample queryparser calls, for user exploration and\nplaygrounding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."queryparser" or (errorHandler.buildDepError "queryparser"))
          (hsPkgs."queryparser-vertica" or (errorHandler.buildDepError "queryparser-vertica"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }