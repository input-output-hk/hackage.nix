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
      identifier = { name = "wai-session-tokyocabinet"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/wai-session-tokyocabinet";
      url = "";
      synopsis = "Session store based on Tokyo Cabinet";
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
          (hsPkgs."tokyocabinet-haskell" or (errorHandler.buildDepError "tokyocabinet-haskell"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."wai-session" or (errorHandler.buildDepError "wai-session"))
        ];
        buildable = true;
      };
    };
  }