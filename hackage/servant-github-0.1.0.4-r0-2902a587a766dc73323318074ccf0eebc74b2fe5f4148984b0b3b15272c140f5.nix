{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-github"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2015 Finlay Thompson";
      maintainer = "finlay.thompson@gmail.com";
      author = "Finlay Thompson";
      homepage = "http://github.com/finlay/servant-github#readme";
      url = "";
      synopsis = "Bindings to GitHub API using servant.";
      description = "This package provides a servant-client based client\nfor accessing the <https://developer.github.com/v3/ GitHub API v3>.\n\nThe github client is provided through the 'Network.GitHub.GitHub' monad,\nwhich provides support for managing the user-agent (a requirement\nfor github), an authentication token, and, pagination\nsupport when the resulting value is a list.\n\n>\n> import System.Environment\n> import Data.String\n> import Network.GitHub\n>\n> main = do\n>    token <- fmap fromString <\$> lookupEnv \"GITHUB_TOKEN\"\n>    result <- runGitHub userOrganisations token\n>    case result of\n>        Left e  ->  print e\n>        Right orgs -> mapM_ print orgs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-link-header" or ((hsPkgs.pkgs-errors).buildDepError "http-link-header"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."servant-github" or ((hsPkgs.pkgs-errors).buildDepError "servant-github"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "servant-github-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."servant-github" or ((hsPkgs.pkgs-errors).buildDepError "servant-github"))
            ];
          buildable = true;
          };
        };
      };
    }