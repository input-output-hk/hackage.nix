{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-mfa-credentials";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright 2017 Takt Inc.";
        maintainer = "shea.levy@takt.com";
        author = "Shea Levy";
        homepage = "https://github.com/TaktInc/aws-mfa-credentials";
        url = "";
        synopsis = "Keep your AWS credentials file up to date with MFA-carrying credentials";
        description = "As described in http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_configure-api-require.html,\nsome IAM policies may require API calls to be authenticated with MFA for additional security. This service\ntracks the lifetime of the temporary credentials used to authenticate with MFA, prompting the user for a new\nMFA code as the old credentials are about to expire and updating the AWS credentials file with the new credentials.";
        buildType = "Simple";
      };
      components = {
        exes = {
          aws-mfa-credentials = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.optparse-text
              hsPkgs.amazonka-core
              hsPkgs.amazonka
              hsPkgs.amazonka-sts
              hsPkgs.freer-effects
              hsPkgs.text
              hsPkgs.lens
              hsPkgs.time
              hsPkgs.process
              hsPkgs.exceptions
              hsPkgs.ini
              hsPkgs.unordered-containers
              hsPkgs.filelock
              hsPkgs.filepath
            ];
          };
        };
      };
    }