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
      identifier = {
        name = "wai-session-clientsession-deferred";
        version = "1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "support@digitallyinduced.com";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/digitallyinduced/wai-session-clientsession-deferred";
      url = "";
      synopsis = "Session store based on clientsession with deferred decryption";
      description = "Provides a session store for use with wai-session.\n\nSee example/Main.hs in git for example usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."wai-session-maybe" or (errorHandler.buildDepError "wai-session-maybe"))
        ];
        buildable = true;
      };
    };
  }