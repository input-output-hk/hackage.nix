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
      identifier = { name = "google-cloud-storage"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2025 tushar";
      maintainer = "tusharadhatrao@gmail.com";
      author = "tushar";
      homepage = "https://github.com/tusharad/google-cloud-haskell#readme";
      url = "";
      synopsis = "";
      description = "GCP Storage bucket client for Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."google-cloud-common" or (errorHandler.buildDepError "google-cloud-common"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "google-cloud-storage-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."google-cloud-common" or (errorHandler.buildDepError "google-cloud-common"))
            (hsPkgs."google-cloud-storage" or (errorHandler.buildDepError "google-cloud-storage"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }