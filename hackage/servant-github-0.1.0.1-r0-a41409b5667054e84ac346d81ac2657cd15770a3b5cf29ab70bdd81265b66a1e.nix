{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-github";
        version = "0.1.0.1";
      };
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
      "servant-github" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.either)
          (hsPkgs.http-link-header)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "servant-github-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.servant-github)
          ];
        };
      };
      tests = {
        "servant-github-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant-github)
          ];
        };
      };
    };
  }