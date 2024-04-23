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
      identifier = { name = "servant-github"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2015 Finlay Thompson";
      maintainer = "finlay.thompson@gmail.com";
      author = "Finlay Thompson";
      homepage = "http://github.com/finlay/servant-github#readme";
      url = "";
      synopsis = "Bindings to GitHub API using servant.";
      description = "This package provides a servant-client based client\nfor accessing the <https://developer.github.com/v3/ GitHub API v3>.\n\nThe github client is provided through the 'Network.GitHub.GitHub' monad,\nwhich provides support for managing the user-agent (a requirement\nfor github), an authentication token, and, pagination\nsupport when the resulting value is a list.\n\n>\n> import System.Environment\n> import Data.String\n> import Network.GitHub\n>\n> main = do\n>    token <- fmap fromString <$> lookupEnv \"GITHUB_TOKEN\"\n>    result <- runGitHub userOrganisations token\n>    case result of\n>        Left e  ->  print e\n>        Right orgs -> mapM_ print orgs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."http-link-header" or (errorHandler.buildDepError "http-link-header"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-github" or (errorHandler.buildDepError "servant-github"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "servant-github-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."servant-github" or (errorHandler.buildDepError "servant-github"))
          ];
          buildable = true;
        };
      };
    };
  }