{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "openssh-github-keys";
          version = "0.1.1.0";
        };
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
        openssh-github-keys = {
          depends  = [
            hsPkgs.base
            hsPkgs.octohat
            hsPkgs.text
          ];
        };
        exes = {
          openssh-github-keys = {
            depends  = [
              hsPkgs.base
              hsPkgs.octohat
              hsPkgs.dotenv
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.keyword-args
              hsPkgs.parsec
            ];
          };
        };
        tests = {
          openssh-github-keys-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.octohat
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.keyword-args
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.keyword-args
            ];
          };
        };
      };
    }