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
      identifier = { name = "maxent-learner-hw-gui"; version = "0.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "2016-2017 George Steel and Peter Jurgec";
      maintainer = "george.steel@gmail.com";
      author = "George Steel";
      homepage = "https://github.com/george-steel/maxent-learner";
      url = "";
      synopsis = "GUI for maxent-learner-hw";
      description = "This is a GUI frontent for maxent-learner-hw using GTK.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "phono-learner-hw-gui" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."maxent-learner-hw" or (errorHandler.buildDepError "maxent-learner-hw"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."frpnow" or (errorHandler.buildDepError "frpnow"))
            (hsPkgs."frpnow-gtk3" or (errorHandler.buildDepError "frpnow-gtk3"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
            ];
          buildable = true;
          };
        };
      };
    }