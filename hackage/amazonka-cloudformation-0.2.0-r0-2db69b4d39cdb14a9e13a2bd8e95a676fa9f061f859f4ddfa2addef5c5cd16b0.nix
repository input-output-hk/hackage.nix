{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-cloudformation"; version = "0.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudFormation SDK.";
      description = "AWS CloudFormation gives developers and systems administrators an easy way to\ncreate and manage a collection of related AWS resources, provisioning and\nupdating them in an orderly and predictable fashion. You can use AWS\nCloudFormation’s sample templates or create your own templates to describe\nthe AWS resources, and any associated dependencies or runtime parameters,\nrequired to run your application. You don’t need to figure out the order for\nprovisioning AWS services or the subtleties of making those dependencies\nwork. CloudFormation takes care of this for you. After the AWS resources are\ndeployed, you can modify and update them in a controlled and predictable way,\nin effect applying version control to your AWS infrastructure the same way\nyou do with your software.\n\n/See:/ <http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }