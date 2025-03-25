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
      specVersion = "1.12";
      identifier = { name = "google-cloud-logging"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2025 tushar";
      maintainer = "tusharadhatrao@gmail.com";
      author = "tushar";
      homepage = "https://github.com/tusharad/google-cloud-haskell#readme";
      url = "";
      synopsis = "GCP Client for Haskell";
      description = "GCP Logging client for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."google-cloud-common" or (errorHandler.buildDepError "google-cloud-common"))
        ];
        buildable = true;
      };
      tests = {
        "google-cloud-logging-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."google-cloud-common" or (errorHandler.buildDepError "google-cloud-common"))
            (hsPkgs."google-cloud-logging" or (errorHandler.buildDepError "google-cloud-logging"))
          ];
          buildable = true;
        };
      };
    };
  }