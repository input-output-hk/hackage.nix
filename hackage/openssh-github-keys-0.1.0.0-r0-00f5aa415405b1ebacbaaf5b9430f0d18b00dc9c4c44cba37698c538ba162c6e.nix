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
        name = "openssh-github-keys";
        version = "0.1.0.0";
      };
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
      "openssh-github-keys" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.octohat)
          (hsPkgs.text)
        ];
      };
      exes = {
        "openssh-github-keys" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.octohat)
            (hsPkgs.dotenv)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unix)
          ];
        };
      };
      tests = {
        "openssh-github-keys-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.octohat)
            (hsPkgs.text)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }