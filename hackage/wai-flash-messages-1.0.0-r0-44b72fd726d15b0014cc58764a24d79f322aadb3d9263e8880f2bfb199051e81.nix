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
      specVersion = "2.2";
      identifier = { name = "wai-flash-messages"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "support@digitallyinduced.com";
      author = "digitally induced GmbH";
      homepage = "";
      url = "";
      synopsis = "Flash messages for wai apps";
      description = "Flash messages middleware for WAI";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cereal-text" or (errorHandler.buildDepError "cereal-text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."wai-session" or (errorHandler.buildDepError "wai-session"))
        ];
        buildable = true;
      };
    };
  }