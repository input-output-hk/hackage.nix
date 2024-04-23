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
      specVersion = "2.4";
      identifier = { name = "gitlab-haskell"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "2019 Rob Stewart, Heriot-Watt University";
      maintainer = "robstewart57@gmail.com";
      author = "Rob Stewart";
      homepage = "https://gitlab.com/robstewart57/gitlab-haskell";
      url = "";
      synopsis = "A Haskell library for the GitLab web API";
      description = "This Haskell library queries and updates the database of a GitLab instance using the GitLab web API: <https://docs.gitlab.com/ee/api/>\n\nRun all GitLab actions with `runGitLab`:\n\n> runGitLab :: (MonadUnliftIO m, MonadIO m)\n>  => GitLabServerConfig -- ^ the GitLab server details\n>  -> GitLab m a         -- ^ the GitLab action\n>  -> m a\n\nFor example:\n\n> myProjects <- runGitLab\n>      (defaultGitLabServer\n>          { url = \"https://gitlab.example.com\"\n>          , token=\"my_token\"} )\n>      (searchUser \"joe\" >>= userProjects . fromJust)\n\nWhich uses the functions:\n\n> searchUser   :: Text -> GitLab m (Maybe User)\n> userProjects :: User -> GitLab m (Maybe [Project])\n\nUnsurprisingly, this library is maintained on GitLab: <https://gitlab.com/robstewart57/gitlab-haskell>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }