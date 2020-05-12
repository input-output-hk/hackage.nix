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
      specVersion = "1.8";
      identifier = { name = "Semantique"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lemmih@gmail.com";
      author = "Lemmih";
      homepage = "";
      url = "";
      synopsis = "Command-line tool for maintaining the Semantique database.";
      description = "Command-line tool for maintaining the Semantique database. See http://semantik.tv/";
      buildType = "Simple";
      };
    components = {
      exes = {
        "semantique" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."classify" or (errorHandler.buildDepError "classify"))
            ];
          buildable = true;
          };
        };
      };
    }