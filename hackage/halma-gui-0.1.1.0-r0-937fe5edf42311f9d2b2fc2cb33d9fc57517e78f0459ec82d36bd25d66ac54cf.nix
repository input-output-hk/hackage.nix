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
      identifier = { name = "halma-gui"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2015-2017 Tim Baumann";
      maintainer = "tim@timbaumann.info";
      author = "Tim Baumann";
      homepage = "https://github.com/timjb/halma";
      url = "";
      synopsis = "GTK application for playing Halma";
      description = "Play Halma (aka Chinese Checkers) on your desktop against your friends or an AI";
      buildType = "Simple";
      };
    components = {
      exes = {
        "halma-gui" = {
          depends = [
            (hsPkgs."halma" or (errorHandler.buildDepError "halma"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."diagrams-gtk" or (errorHandler.buildDepError "diagrams-gtk"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."mvc" or (errorHandler.buildDepError "mvc"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
            ];
          buildable = true;
          };
        };
      };
    }