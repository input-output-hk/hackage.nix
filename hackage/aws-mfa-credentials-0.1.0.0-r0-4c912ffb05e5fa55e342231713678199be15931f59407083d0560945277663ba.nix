{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aws-mfa-credentials"; version = "0.1.0.0"; };
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
        "aws-mfa-credentials" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or ((hsPkgs.pkgs-errors).buildDepError "optparse-text"))
            (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
            (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
            (hsPkgs."amazonka-sts" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-sts"))
            (hsPkgs."freer-effects" or ((hsPkgs.pkgs-errors).buildDepError "freer-effects"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."ini" or ((hsPkgs.pkgs-errors).buildDepError "ini"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."filelock" or ((hsPkgs.pkgs-errors).buildDepError "filelock"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }