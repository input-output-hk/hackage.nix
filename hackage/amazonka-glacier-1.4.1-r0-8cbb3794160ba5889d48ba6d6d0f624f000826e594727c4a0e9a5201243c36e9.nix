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
        name = "amazonka-glacier";
        version = "1.4.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Glacier SDK.";
      description = "Amazon Glacier is a storage solution for \\\"cold data.\\\"\nAmazon Glacier is an extremely low-cost storage service that provides\nsecure, durable, and easy-to-use storage for data backup and archival.\nWith Amazon Glacier, customers can store their data cost effectively for\nmonths, years, or decades. Amazon Glacier also enables customers to\noffload the administrative burdens of operating and scaling storage to\nAWS, so they don\\'t have to worry about capacity planning, hardware\nprovisioning, data replication, hardware failure and recovery, or\ntime-consuming hardware migrations.\nAmazon Glacier is a great storage choice when low storage cost is\nparamount, your data is rarely retrieved, and retrieval latency of\nseveral hours is acceptable. If your application requires fast or\nfrequent access to your data, consider using Amazon S3. For more\ninformation, go to\n<http://aws.amazon.com/s3/ Amazon Simple Storage Service (Amazon S3)>.\nYou can store any kind of data in any format. There is no maximum limit\non the total amount of data you can store in Amazon Glacier.\nIf you are a first-time user of Amazon Glacier, we recommend that you\nbegin by reading the following sections in the /Amazon Glacier Developer\nGuide/:\n-   <http://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html What is Amazon Glacier>\n- This section of the Developer Guide describes the underlying data\nmodel, the operations it supports, and the AWS SDKs that you can use\nto interact with the service.\n-   <http://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html Getting Started with Amazon Glacier>\n- The Getting Started section walks you through the process of\ncreating a vault, uploading archives, creating jobs to download\narchives, retrieving the job output, and deleting archives.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.Glacier\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
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
        "amazonka-glacier-test" = {
          depends  = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-glacier)
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