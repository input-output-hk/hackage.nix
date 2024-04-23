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
      identifier = { name = "pong-server"; version = "0.0.2.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2016 Robert Fischer";
      maintainer = "smokejumperit+pong-server@gmail.com";
      author = "Robert Fischer";
      homepage = "http://github.com/RobertFischer/pong-server#readme";
      url = "";
      synopsis = "A simple embedded pingable server that runs in the background.";
      description = "Please see README.md on GitHub";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
      tests = {
        "pong-server-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pong-server" or (errorHandler.buildDepError "pong-server"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = true;
        };
      };
    };
  }