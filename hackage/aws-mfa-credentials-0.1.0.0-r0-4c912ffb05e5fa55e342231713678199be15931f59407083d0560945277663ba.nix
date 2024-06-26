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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or (errorHandler.buildDepError "optparse-text"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-sts" or (errorHandler.buildDepError "amazonka-sts"))
            (hsPkgs."freer-effects" or (errorHandler.buildDepError "freer-effects"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }