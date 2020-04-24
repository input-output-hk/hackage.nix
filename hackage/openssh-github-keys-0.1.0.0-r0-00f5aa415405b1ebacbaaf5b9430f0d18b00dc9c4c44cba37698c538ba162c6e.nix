{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."octohat" or ((hsPkgs.pkgs-errors).buildDepError "octohat"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "openssh-github-keys" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."octohat" or ((hsPkgs.pkgs-errors).buildDepError "octohat"))
            (hsPkgs."dotenv" or ((hsPkgs.pkgs-errors).buildDepError "dotenv"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      tests = {
        "openssh-github-keys-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."octohat" or ((hsPkgs.pkgs-errors).buildDepError "octohat"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }