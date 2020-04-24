{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "openssh-github-keys"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2015 Stack Builders Inc.";
      maintainer = "hackage@stackbuilders.com";
      author = "Stack Builders";
      homepage = "https://github.com/stackbuilders/openssh-github-keys";
      url = "";
      synopsis = "Fetch OpenSSH keys from a GitHub team";
      description = "\nThis package fetches the OpenSSH public keys for all users from a\nGitHub team. It is intended to be executed from the AuthorizedKeys\ncommand in the sshd_config file, which then allows users to log in\nusing keys that they have in their Github accounts.\n\nPlease see the\n<https://github.com/stackbuilders/openssh-github-keys GitHub page>\nfor detailed usage information.\n";
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
            (hsPkgs."keyword-args" or ((hsPkgs.pkgs-errors).buildDepError "keyword-args"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
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
            (hsPkgs."keyword-args" or ((hsPkgs.pkgs-errors).buildDepError "keyword-args"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."keyword-args" or ((hsPkgs.pkgs-errors).buildDepError "keyword-args"))
            ];
          buildable = true;
          };
        };
      };
    }