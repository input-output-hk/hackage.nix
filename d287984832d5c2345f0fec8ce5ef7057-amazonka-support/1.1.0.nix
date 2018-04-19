{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-support";
          version = "1.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Support SDK.";
        description = "AWS Support\nThe AWS Support API reference is intended for programmers who need\ndetailed information about the AWS Support operations and data types.\nThis service enables you to manage your AWS Support cases\nprogrammatically. It uses HTTP methods that return results in JSON\nformat.\nThe AWS Support service also exposes a set of\n<https://aws.amazon.com/premiumsupport/trustedadvisor/ Trusted Advisor>\nfeatures. You can retrieve a list of checks and their descriptions, get\ncheck results, specify checks to refresh, and get the refresh status of\nchecks.\nThe following list describes the AWS Support case management operations:\n-   __Service names, issue categories, and available severity levels.__\nThe DescribeServices and DescribeSeverityLevels operations return\nAWS service names, service codes, service categories, and problem\nseverity levels. You use these values when you call the CreateCase\noperation.\n-   __Case creation, case details, and case resolution.__ The\nCreateCase, DescribeCases, DescribeAttachment, and ResolveCase\noperations create AWS Support cases, retrieve information about\ncases, and resolve cases.\n-   __Case communication.__ The DescribeCommunications,\nAddCommunicationToCase, and AddAttachmentsToSet operations retrieve\nand add communications and attachments to AWS Support cases.\nThe following list describes the operations available from the AWS\nSupport service for Trusted Advisor:\n-   DescribeTrustedAdvisorChecks returns the list of checks that run\nagainst your AWS resources.\n-   Using the @CheckId@ for a specific check returned by\nDescribeTrustedAdvisorChecks, you can call\nDescribeTrustedAdvisorCheckResult to obtain the results for the\ncheck you specified.\n-   DescribeTrustedAdvisorCheckSummaries returns summarized results for\none or more Trusted Advisor checks.\n-   RefreshTrustedAdvisorCheck requests that Trusted Advisor rerun a\nspecified check.\n-   DescribeTrustedAdvisorCheckRefreshStatuses reports the refresh\nstatus of one or more checks.\nFor authentication of requests, AWS Support uses\n<http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 Signing Process>.\nSee\n<http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html About the AWS Support API>\nin the /AWS Support User Guide/ for information about how to use this\nservice to create and manage your support cases, and how to call Trusted\nAdvisor for results of checks on your resources.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.Support\" and the <http://docs.aws.amazon.com/awssupport/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-support = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-support-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-support
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