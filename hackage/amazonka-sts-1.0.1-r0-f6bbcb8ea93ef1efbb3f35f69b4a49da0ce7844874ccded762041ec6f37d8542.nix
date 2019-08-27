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
      identifier = { name = "amazonka-sts"; version = "1.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Security Token Service SDK.";
      description = "AWS Security Token Service\nThe AWS Security Token Service (STS) is a web service that enables you\nto request temporary, limited-privilege credentials for AWS Identity and\nAccess Management (IAM) users or for users that you authenticate\n(federated users). This guide provides descriptions of the STS API. For\nmore detailed information about using this service, go to\n<http://docs.aws.amazon.com/STS/latest/UsingSTS/Welcome.html Using Temporary Security Credentials>.\nAs an alternative to using the API, you can use one of the AWS SDKs,\nwhich consist of libraries and sample code for various programming\nlanguages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs\nprovide a convenient way to create programmatic access to STS. For\nexample, the SDKs take care of cryptographically signing requests,\nmanaging errors, and retrying requests automatically. For information\nabout the AWS SDKs, including how to download and install them, see the\n<http://aws.amazon.com/tools/ Tools for Amazon Web Services page>.\nFor information about setting up signatures and authorization through\nthe API, go to\n<http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html Signing AWS API Requests>\nin the /AWS General Reference/. For general information about the Query\nAPI, go to\n<http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html Making Query Requests>\nin /Using IAM/. For information about using security tokens with other\nAWS products, go to\n<http://docs.aws.amazon.com/STS/latest/UsingSTS/UsingTokens.html Using Temporary Security Credentials to Access AWS>\nin /Using Temporary Security Credentials/.\nIf you\\'re new to AWS and need additional technical information about a\nspecific AWS product, you can find the product\\'s technical\ndocumentation at <http://aws.amazon.com/documentation/>.\n__Endpoints__\nThe AWS Security Token Service (STS) has a default endpoint of\nhttps:\\/\\/sts.amazonaws.com that maps to the US East (N. Virginia)\nregion. Additional regions are available, but must first be activated in\nthe AWS Management Console before you can use a different region\\'s\nendpoint. For more information about activating a region for STS see\n<http://docs.aws.amazon.com/STS/latest/UsingSTS/sts-enableregions.html Activating STS in a New Region>\nin the /Using Temporary Security Credentials/ guide.\nFor information about STS endpoints, see\n<http://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region Regions and Endpoints>\nin the /AWS General Reference/.\n__Recording API requests__\nSTS supports AWS CloudTrail, which is a service that records AWS calls\nfor your AWS account and delivers log files to an Amazon S3 bucket. By\nusing information collected by CloudTrail, you can determine what\nrequests were successfully made to STS, who made the request, when it\nwas made, and so on. To learn more about CloudTrail, including how to\nturn it on and find your log files, see the\n<http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html AWS CloudTrail User Guide>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.STS\" and the <http://docs.aws.amazon.com/STS/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      tests = {
        "amazonka-sts-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (buildDepError "amazonka-test"))
            (hsPkgs."amazonka-sts" or (buildDepError "amazonka-sts"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }