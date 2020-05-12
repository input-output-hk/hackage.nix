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
      identifier = { name = "pivotal-tracker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "utdemir@gmail.com";
      author = "Utku Demir";
      homepage = "";
      url = "";
      synopsis = "A library and a CLI tool for accessing Pivotal Tracker API";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson-casing" or (errorHandler.buildDepError "aeson-casing"))
          ];
        buildable = true;
        };
      exes = {
        "tracker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tracker" or (errorHandler.buildDepError "tracker"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }