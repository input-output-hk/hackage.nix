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
      identifier = { name = "amazonka-kms"; version = "0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Key Management Service SDK.";
      description = "Amazon Key Management Service (KMS) is a managed service that makes it\neasy for you to create and control the encryption keys used to encrypt\nyour data, and uses Hardware Security Modules (HSMs) to protect the\nsecurity of your keys. Amazon Key Management Service is integrated with\nother Amazon services including Amazon EBS, Amazon S3, and Amazon\nRedshift. Amazon Key Management Service is also integrated with Amazon\nCloudTrail to provide you with logs of all key usage to help meet your\nregulatory and compliance needs.\n\n/See:/ <http://docs.aws.amazon.com/kms/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }