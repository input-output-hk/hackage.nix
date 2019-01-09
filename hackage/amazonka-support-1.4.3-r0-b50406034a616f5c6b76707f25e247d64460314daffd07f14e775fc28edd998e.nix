{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-support"; version = "1.4.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Support SDK.";
      description = "AWS Support\nThe AWS Support API reference is intended for programmers who need detailed information about the AWS Support operations and data types. This service enables you to manage your AWS Support cases programmatically. It uses HTTP methods that return results in JSON format.\nThe AWS Support service also exposes a set of <https://aws.amazon.com/premiumsupport/trustedadvisor/ Trusted Advisor> features. You can retrieve a list of checks and their descriptions, get check results, specify checks to refresh, and get the refresh status of checks.\nThe following list describes the AWS Support case management operations:\n-   __Service names, issue categories, and available severity levels.__ The < DescribeServices> and < DescribeSeverityLevels> operations return AWS service names, service codes, service categories, and problem severity levels. You use these values when you call the < CreateCase> operation.\n-   __Case creation, case details, and case resolution.__ The < CreateCase>, < DescribeCases>, < DescribeAttachment>, and < ResolveCase> operations create AWS Support cases, retrieve information about cases, and resolve cases.\n-   __Case communication.__ The < DescribeCommunications>, < AddCommunicationToCase>, and < AddAttachmentsToSet> operations retrieve and add communications and attachments to AWS Support cases.\nThe following list describes the operations available from the AWS Support service for Trusted Advisor:\n-   < DescribeTrustedAdvisorChecks> returns the list of checks that run against your AWS resources.\n-   Using the\n@\nCheckId\n@\nfor a specific check returned by < DescribeTrustedAdvisorChecks>, you can call < DescribeTrustedAdvisorCheckResult> to obtain the results for the check you specified.\n-   < DescribeTrustedAdvisorCheckSummaries> returns summarized results for one or more Trusted Advisor checks.\n-   < RefreshTrustedAdvisorCheck> requests that Trusted Advisor rerun a specified check.\n-   < DescribeTrustedAdvisorCheckRefreshStatuses> reports the refresh status of one or more checks.\nFor authentication of requests, AWS Support uses <http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 Signing Process>.\nSee <http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html About the AWS Support API> in the /AWS Support User Guide/ for information about how to use this service to create and manage your support cases, and how to call Trusted Advisor for results of checks on your resources.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.Support\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      tests = {
        "amazonka-support-test" = {
          depends = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-support)
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