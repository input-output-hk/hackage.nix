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
      identifier = { name = "amazonka-elasticbeanstalk"; version = "1.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Elastic Beanstalk SDK.";
      description = "AWS Elastic Beanstalk\nThis is the AWS Elastic Beanstalk API Reference. This guide provides\ndetailed information about AWS Elastic Beanstalk actions, data types,\nparameters, and errors.\nAWS Elastic Beanstalk is a tool that makes it easy for you to create,\ndeploy, and manage scalable, fault-tolerant applications running on\nAmazon Web Services cloud resources.\nFor more information about this product, go to the\n<http://aws.amazon.com/elasticbeanstalk/ AWS Elastic Beanstalk> details\npage. The location of the latest AWS Elastic Beanstalk WSDL is\n<http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl>.\nTo install the Software Development Kits (SDKs), Integrated Development\nEnvironment (IDE) Toolkits, and command line tools that enable you to\naccess the API, go to\n<https://aws.amazon.com/tools/ Tools for Amazon Web Services>.\n__Endpoints__\nFor a list of region-specific endpoints that AWS Elastic Beanstalk\nsupports, go to\n<http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region Regions and Endpoints>\nin the /Amazon Web Services Glossary/.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.ElasticBeanstalk\" and the <http://docs.aws.amazon.com/elasticbeanstalk/latest/api/Welcome.html AWS API Reference>\nto get started.";
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
        "amazonka-elasticbeanstalk-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."amazonka-elasticbeanstalk" or (errorHandler.buildDepError "amazonka-elasticbeanstalk"))
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