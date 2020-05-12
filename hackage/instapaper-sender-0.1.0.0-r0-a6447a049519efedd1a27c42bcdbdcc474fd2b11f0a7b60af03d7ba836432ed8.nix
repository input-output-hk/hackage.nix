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
      identifier = { name = "instapaper-sender"; version = "0.1.0.0"; };
      license = "LicenseRef-AGPL-3.0";
      copyright = "2017 Michael Smith";
      maintainer = "michael@spinda.net";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/instapaper-sender#readme";
      url = "";
      synopsis = "Basic HTTP gateway to save articles to Instapaper";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "instapaper-sender" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."HaskellNet" or (errorHandler.buildDepError "HaskellNet"))
            (hsPkgs."HaskellNet-SSL" or (errorHandler.buildDepError "HaskellNet-SSL"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            ];
          buildable = true;
          };
        };
      };
    }