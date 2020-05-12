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
      identifier = { name = "aws-ec2-knownhosts"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2015";
      maintainer = "luke@bitnomial.com, opensource@bitnomial.com";
      author = "Luke Hoersten";
      homepage = "http://github.com/bitnomial/aws-ec2-knownhosts";
      url = "";
      synopsis = "Capture and manage AWS EC2 known_host pubkeys";
      description = "Capture and manage AWS EC2 known_host pubkeys via the AWS API command line tool.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          ];
        buildable = true;
        };
      exes = {
        "aws-ec2-pubkeys" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aws-ec2-knownhosts" or (errorHandler.buildDepError "aws-ec2-knownhosts"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "aws-ec2-knownhosts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aws-ec2-knownhosts" or (errorHandler.buildDepError "aws-ec2-knownhosts"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "aws-ec2-keysync" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aws-ec2-knownhosts" or (errorHandler.buildDepError "aws-ec2-knownhosts"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        };
      };
    }