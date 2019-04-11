{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "gitlab-haskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Rob Stewart, Heriot-Watt University";
      maintainer = "robstewart57@gmail.com";
      author = "Rob Stewart";
      homepage = "https://gitlab.com/robstewart57/gitlab-haskell";
      url = "";
      synopsis = "A Haskell library for the GitLab web API";
      description = "This Haskell library queries and updates the database of a GitLab instance using the GitLab web API: <https://docs.gitlab.com/ee/api/>\n\nAn example that returns projects for which issue creation is enabled is:\n\n> projectsWithIssuesEnabled :: IO [Project]\n> projectsWithIssuesEnabled = runGitLab myConfig \$ filter (issueEnabled . issues_enabled) <\$> allProjects\n>   where myConfig = defaultGitLabServer\n>             { url = \"https://gitlab.example.com\"\n>             , token = \"my_access_token\" }\n>         issueEnabled Nothing = False\n>         issueEnabled (Just t) = t\n\nUnsurprisingly, GitLab hosts this Haskell library: <https://gitlab.com/robstewart57/gitlab-haskell>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.connection)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.async)
          (hsPkgs.http-types)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          ];
        };
      };
    }