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
      specVersion = "1.4";
      identifier = { name = "uni-uDrawGraph"; version = "2.2.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Christian.Maeder@dfki.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb";
      url = "";
      synopsis = "Graphs binding";
      description = "Binding to uDrawGraph (formerly daVinci)\n<http://www.informatik.uni-bremen.de/uDrawGraph/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."uni-util" or (errorHandler.buildDepError "uni-util"))
          (hsPkgs."uni-events" or (errorHandler.buildDepError "uni-events"))
          (hsPkgs."uni-posixutil" or (errorHandler.buildDepError "uni-posixutil"))
          (hsPkgs."uni-reactor" or (errorHandler.buildDepError "uni-reactor"))
          (hsPkgs."uni-graphs" or (errorHandler.buildDepError "uni-graphs"))
          ];
        buildable = true;
        };
      };
    }