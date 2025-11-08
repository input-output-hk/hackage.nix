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
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "stratosphere-backup"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Markus Schirp";
      author = "";
      homepage = "https://github.com/mbj/stratosphere#readme";
      url = "";
      synopsis = "Stratosphere integration for AWS Backup.";
      description = "Integration into stratosphere to generate resources and properties for AWS Backup";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stratosphere" or (errorHandler.buildDepError "stratosphere"))
        ];
        buildable = true;
      };
    };
  }