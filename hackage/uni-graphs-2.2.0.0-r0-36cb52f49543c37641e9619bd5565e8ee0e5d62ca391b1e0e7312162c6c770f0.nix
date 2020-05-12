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
    flags = { debug = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "uni-graphs"; version = "2.2.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Christian.Maeder@dfki.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
      url = "";
      synopsis = "Graphs";
      description = "Graphs toolkit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."uni-util" or (errorHandler.buildDepError "uni-util"))
          (hsPkgs."uni-events" or (errorHandler.buildDepError "uni-events"))
          (hsPkgs."uni-reactor" or (errorHandler.buildDepError "uni-reactor"))
          (hsPkgs."uni-htk" or (errorHandler.buildDepError "uni-htk"))
          ];
        buildable = true;
        };
      };
    }