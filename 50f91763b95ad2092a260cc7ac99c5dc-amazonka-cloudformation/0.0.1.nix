{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-cloudformation";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon CloudFormation SDK.";
        description = "AWS CloudFormation gives developers and systems administrators an easy\nway to create and manage a collection of related AWS resources,\nprovisioning and updating them in an orderly and predictable fashion.\nYou can use AWS CloudFormation’s sample templates or create your own\ntemplates to describe the AWS resources, and any associated\ndependencies or runtime parameters, required to run your application.\nYou don’t need to figure out the order for provisioning AWS services or\nthe subtleties of making those dependencies work. CloudFormation takes\ncare of this for you. After the AWS resources are deployed, you can\nmodify and update them in a controlled and predictable way, in effect\napplying version control to your AWS infrastructure the same way you do\nwith your software.\n\n/See:/ <http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-cloudformation = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }