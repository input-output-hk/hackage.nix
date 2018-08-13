{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-codedeploy";
        version = "1.4.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CodeDeploy SDK.";
      description = "AWS CodeDeploy __Overview__\nThis reference guide provides descriptions of the AWS CodeDeploy APIs. For more information about AWS CodeDeploy, see the <docs.aws.amazon.com/codedeploy/latest/userguide AWS CodeDeploy User Guide>.\n__Using the APIs__\nYou can use the AWS CodeDeploy APIs to work with the following:\n-   Applications are unique identifiers used by AWS CodeDeploy to ensure the correct combinations of revisions, deployment configurations, and deployment groups are being referenced during deployments.\nYou can use the AWS CodeDeploy APIs to create, delete, get, list, and update applications.\n-   Deployment configurations are sets of deployment rules and success and failure conditions used by AWS CodeDeploy during deployments.\nYou can use the AWS CodeDeploy APIs to create, delete, get, and list deployment configurations.\n-   Deployment groups are groups of instances to which application revisions can be deployed.\nYou can use the AWS CodeDeploy APIs to create, delete, get, list, and update deployment groups.\n-   Instances represent Amazon EC2 instances to which application revisions are deployed. Instances are identified by their Amazon EC2 tags or Auto Scaling group names. Instances belong to deployment groups.\nYou can use the AWS CodeDeploy APIs to get and list instance.\n-   Deployments represent the process of deploying revisions to instances.\nYou can use the AWS CodeDeploy APIs to create, get, list, and stop deployments.\n-   Application revisions are archive files stored in Amazon S3 buckets or GitHub repositories. These revisions contain source content (such as source code, web pages, executable files, and deployment scripts) along with an application specification (AppSpec) file. (The AppSpec file is unique to AWS CodeDeploy; it defines the deployment actions you want AWS CodeDeploy to execute.) Ffor application revisions stored in Amazon S3 buckets, an application revision is uniquely identified by its Amazon S3 object key and its ETag, version, or both. For application revisions stored in GitHub repositories, an application revision is uniquely identified by its repository name and commit ID. Application revisions are deployed through deployment groups.\nYou can use the AWS CodeDeploy APIs to get, list, and register application revisions.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CodeDeploy\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-codedeploy" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-codedeploy-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-codedeploy)
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