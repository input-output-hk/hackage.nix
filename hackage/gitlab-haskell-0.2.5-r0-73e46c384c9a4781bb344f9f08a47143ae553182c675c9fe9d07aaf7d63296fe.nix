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
      identifier = { name = "gitlab-haskell"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "2020 Rob Stewart, Heriot-Watt University";
      maintainer = "robstewart57@gmail.com";
      author = "Rob Stewart";
      homepage = "https://gitlab.com/robstewart57/gitlab-haskell";
      url = "";
      synopsis = "A Haskell library for the GitLab web API";
      description = "This Haskell library queries and updates the database of a GitLab instance using the GitLab web API: <https://docs.gitlab.com/ee/api/>\n\nIt also features an API for writing Gitlab file hook applications\n\nRun all GitLab actions with `runGitLab`:\n\n> runGitLab ::\n>  => GitLabServerConfig -- ^ the GitLab server details\n>  -> GitLab a           -- ^ the GitLab action\n>  -> IO a\n\nFor example:\n\n> myProjects <- runGitLab\n>      (defaultGitLabServer\n>          { url = \"https://gitlab.example.com\"\n>          , token=\"my_token\"} )\n>      (searchUser \"joe\" >>= userProjects . fromJust)\n\nWhich uses the functions:\n\n> searchUser   :: Text -> GitLab (Maybe User)\n> userProjects :: User -> GitLab (Maybe [Project])\n> projectCommits :: Project -> GitLab [Commit]\n\nThis library can also be used to develop rule based GitLab file hooks that react in real time to GitLab events with:\n\n> receive :: [Rule] -> GitLab ()\n\n> class (FromJSON a) => SystemHook a where\n>   match   :: String -> (a -> GitLab ()) -> Rule\n>   matchIf :: String -> (a -> GitLab Bool) -> (a -> GitLab ()) -> Rule\n\nFor more details about the file hooks support: <https://www.macs.hw.ac.uk/~rs46/posts/2020-06-06-gitlab-system-hooks.html>\n\nUnsurprisingly, this library is maintained on GitLab: <https://gitlab.com/robstewart57/gitlab-haskell>";
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
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      tests = {
        "test-gitlab-haskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."gitlab-haskell" or (errorHandler.buildDepError "gitlab-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }