{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amazonka-storagegateway";
        version = "1.3.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Storage Gateway SDK.";
      description = "AWS Storage Gateway Service\nAWS Storage Gateway is the service that connects an on-premises software\nappliance with cloud-based storage to provide seamless and secure\nintegration between an organization\\'s on-premises IT environment and\nAWS\\'s storage infrastructure. The service enables you to securely\nupload data to the AWS cloud for cost effective backup and rapid\ndisaster recovery.\nUse the following links to get started using the /AWS Storage Gateway\nService API Reference/:\n-   <http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayHTTPRequestsHeaders.html AWS Storage Gateway Required Request Headers>:\nDescribes the required headers that you must send with every POST\nrequest to AWS Storage Gateway.\n-   <http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewaySigningRequests.html Signing Requests>:\nAWS Storage Gateway requires that you authenticate every request you\nsend; this topic describes how sign such a request.\n-   <http://docs.aws.amazon.com/storagegateway/latest/userguide/APIErrorResponses.html Error Responses>:\nProvides reference information about AWS Storage Gateway errors.\n-   <http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPIOperations.html Operations in AWS Storage Gateway>:\nContains detailed descriptions of all AWS Storage Gateway\noperations, their request parameters, response elements, possible\nerrors, and examples of requests and responses.\n-   <http://docs.aws.amazon.com/general/latest/gr/index.html?rande.html AWS Storage Gateway Regions and Endpoints>:\nProvides a list of each of the regions and endpoints available for\nuse with AWS Storage Gateway.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.StorageGateway\" and the <http://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
    };
    components = {
      "amazonka-storagegateway" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
      tests = {
        "amazonka-storagegateway-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-storagegateway)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
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