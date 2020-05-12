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
      identifier = { name = "amazonka-storagegateway"; version = "1.4.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Storage Gateway SDK.";
      description = "AWS Storage Gateway Service\nAWS Storage Gateway is the service that connects an on-premises software appliance with cloud-based storage to provide seamless and secure integration between an organization\\'s on-premises IT environment and AWS\\'s storage infrastructure. The service enables you to securely upload data to the AWS cloud for cost effective backup and rapid disaster recovery.\nUse the following links to get started using the /AWS Storage Gateway Service API Reference/:\n-   <http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayHTTPRequestsHeaders.html AWS Storage Gateway Required Request Headers>: Describes the required headers that you must send with every POST request to AWS Storage Gateway.\n-   <http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewaySigningRequests.html Signing Requests>: AWS Storage Gateway requires that you authenticate every request you send; this topic describes how sign such a request.\n-   <http://docs.aws.amazon.com/storagegateway/latest/userguide/APIErrorResponses.html Error Responses>: Provides reference information about AWS Storage Gateway errors.\n-   <http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPIOperations.html Operations in AWS Storage Gateway>: Contains detailed descriptions of all AWS Storage Gateway operations, their request parameters, response elements, possible errors, and examples of requests and responses.\n-   <http://docs.aws.amazon.com/general/latest/gr/index.html?rande.html AWS Storage Gateway Regions and Endpoints>: Provides a list of each of the s and endpoints available for use with AWS Storage Gateway.\nAWS Storage Gateway resource IDs are in uppercase. When you use these resource IDs with the Amazon EC2 API, EC2 expects resource IDs in lowercase. You must change your resource ID to lowercase to use it with the EC2 API. For example, in Storage Gateway the ID for a volume might be\n@\nvol-1122AABB\n@\n. When you use this ID with the EC2 API, you must change it to\n@\nvol-1122aabb\n@\n. Otherwise, the EC2 API might not behave as expected.\nIDs for Storage Gateway volumes and Amazon EBS snapshots created from gateway volumes are changing to a longer format. Starting in December 2016, all new volumes and snapshots will be created with a 17-character string. Starting in April 2016, you will be able to use these longer IDs so you can test your systems with the new format. For more information, see <https://aws.amazon.com/ec2/faqs/#longer-ids Longer EC2 and EBS Resource IDs>.\nFor example, a volume ARN with the longer volume ID format will look like this:\n@\narn:aws:storagegateway:us-west-2:111122223333:gateway\\/sgw-12A3456B\\/volume\\/vol-1122AABBCCDDEEFFG\n@\n\nA snapshot ID with the longer ID format will look like this:\n@\nsnap-78e226633445566ee\n@\n\nFor more information, see <https://forums.aws.amazon.com/ann.jspa?annID=3557 Announcement: Heads-up – Longer AWS Storage Gateway volume and snapshot IDs coming in 2016>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.StorageGateway\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
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
        "amazonka-storagegateway-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."amazonka-storagegateway" or (errorHandler.buildDepError "amazonka-storagegateway"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
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