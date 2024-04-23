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
      identifier = { name = "openssh-github-keys"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Stack Builders Inc.";
      maintainer = "hackage@stackbuilders.com";
      author = "Stack Builders";
      homepage = "https://github.com/stackbuilders/openssh-github-keys";
      url = "";
      synopsis = "Fetch OpenSSH keys from a Github team";
      description = "\nThis package fetches the OpenSSH public keys for all users from a\nGithub team. It is intended to be executed from the AuthorizedKeys\ncommand in the sshd_config file, which then allows users to log in\nusing keys that they have in their Github accounts.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."octohat" or (errorHandler.buildDepError "octohat"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "openssh-github-keys" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."octohat" or (errorHandler.buildDepError "octohat"))
            (hsPkgs."dotenv" or (errorHandler.buildDepError "dotenv"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
      tests = {
        "openssh-github-keys-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."octohat" or (errorHandler.buildDepError "octohat"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }