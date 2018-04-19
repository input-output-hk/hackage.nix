{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-codedeploy";
          version = "1.3.3.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon CodeDeploy SDK.";
        description = "AWS CodeDeploy __Overview__\nThis is the AWS CodeDeploy API Reference. This guide provides\ndescriptions of the AWS CodeDeploy APIs. For additional information, see\nthe\n<http://docs.aws.amazon.com/codedeploy/latest/userguide AWS CodeDeploy User Guide>.\n__Using the APIs__\nYou can use the AWS CodeDeploy APIs to work with the following items:\n-   Applications are unique identifiers that AWS CodeDeploy uses to\nensure that the correct combinations of revisions, deployment\nconfigurations, and deployment groups are being referenced during\ndeployments.\nYou can use the AWS CodeDeploy APIs to create, delete, get, list,\nand update applications.\n-   Deployment configurations are sets of deployment rules and\ndeployment success and failure conditions that AWS CodeDeploy uses\nduring deployments.\nYou can use the AWS CodeDeploy APIs to create, delete, get, and list\ndeployment configurations.\n-   Deployment groups are groups of instances to which application\nrevisions can be deployed.\nYou can use the AWS CodeDeploy APIs to create, delete, get, list,\nand update deployment groups.\n-   Instances represent Amazon EC2 instances to which application\nrevisions are deployed. Instances are identified by their Amazon EC2\ntags or Auto Scaling group names. Instances belong to deployment\ngroups.\nYou can use the AWS CodeDeploy APIs to get and list instances.\n-   Deployments represent the process of deploying revisions to\ninstances.\nYou can use the AWS CodeDeploy APIs to create, get, list, and stop\ndeployments.\n-   Application revisions are archive files that are stored in Amazon S3\nbuckets or GitHub repositories. These revisions contain source\ncontent (such as source code, web pages, executable files, any\ndeployment scripts, and similar) along with an Application\nSpecification file (AppSpec file). (The AppSpec file is unique to\nAWS CodeDeploy; it defines a series of deployment actions that you\nwant AWS CodeDeploy to execute.) An application revision is uniquely\nidentified by its Amazon S3 object key and its ETag, version, or\nboth (for application revisions that are stored in Amazon S3\nbuckets) or by its repository name and commit ID (for applications\nrevisions that are stored in GitHub repositories). Application\nrevisions are deployed through deployment groups.\nYou can use the AWS CodeDeploy APIs to get, list, and register\napplication revisions.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CodeDeploy\" and the <http://docs.aws.amazon.com/codedeploy/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-codedeploy = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-codedeploy-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-codedeploy
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }