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
      identifier = { name = "mattermost-api-qc"; version = "40000.0.1"; };
      license = "ISC";
      copyright = "2017 Kevin Quick";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/matterhorn-chat/mattermost-api-qc";
      url = "";
      synopsis = "QuickCheck instances for the Mattermost client API library";
      description = "A testing library for the mattermost-api library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mattermost-api" or (errorHandler.buildDepError "mattermost-api"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }