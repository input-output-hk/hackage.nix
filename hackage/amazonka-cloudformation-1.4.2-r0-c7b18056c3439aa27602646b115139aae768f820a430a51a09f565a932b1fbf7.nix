{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-cloudformation";
        version = "1.4.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudFormation SDK.";
      description = "AWS CloudFormation\nAWS CloudFormation enables you to create and manage AWS infrastructure\ndeployments predictably and repeatedly. AWS CloudFormation helps you\nleverage AWS products such as Amazon EC2, EBS, Amazon SNS, ELB, and Auto\nScaling to build highly-reliable, highly scalable, cost effective\napplications without worrying about creating and configuring the\nunderlying AWS infrastructure.\nWith AWS CloudFormation, you declare all of your resources and\ndependencies in a template file. The template defines a collection of\nresources as a single unit called a stack. AWS CloudFormation creates\nand deletes all member resources of the stack together and manages all\ndependencies between the resources for you.\nFor more information about this product, go to the\n<http://aws.amazon.com/cloudformation/ CloudFormation Product Page>.\nAmazon CloudFormation makes use of other AWS products. If you need\nadditional technical information about a specific AWS product, you can\nfind the product\\'s technical documentation at\n<http://docs.aws.amazon.com/documentation/>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CloudFormation\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-cloudformation-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-cloudformation)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }