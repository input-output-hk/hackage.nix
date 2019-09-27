let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-codedeploy"; version = "1.3.3"; };
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
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "amazonka-codedeploy-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (buildDepError "amazonka-test"))
            (hsPkgs."amazonka-codedeploy" or (buildDepError "amazonka-codedeploy"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }