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
      identifier = { name = "amazonka-config"; version = "1.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Config SDK.";
      description = "AWS Config\nAWS Config provides a way to keep track of the configurations of all the\nAWS resources associated with your AWS account. You can use AWS Config\nto get the current and historical configurations of each AWS resource\nand also to get information about the relationship between the\nresources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2)\ninstance, an Elastic Block Store (EBS) volume, an Elastic network\nInterface (ENI), or a security group. For a complete list of resources\ncurrently supported by AWS Config, see\n<http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources Supported AWS Resources>.\nYou can access and manage AWS Config through the AWS Management Console,\nthe AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS\nSDKs for AWS Config\nThis reference guide contains documentation for the AWS Config API and\nthe AWS CLI commands that you can use to manage AWS Config.\nThe AWS Config API uses the Signature Version 4 protocol for signing\nrequests. For more information about how to sign a request with this\nprotocol, see\n<http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 Signing Process>.\nFor detailed information about AWS Config features and their associated\nactions or commands, as well as how to work with AWS Management Console,\nsee\n<http://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html What Is AWS Config?>\nin the /AWS Config Developer Guide/.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.Config\" and the <http://docs.aws.amazon.com/config/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
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
      tests = {
        "amazonka-config-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."amazonka-config" or (errorHandler.buildDepError "amazonka-config"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }