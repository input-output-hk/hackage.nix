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
      identifier = { name = "amazonka-support"; version = "1.4.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Support SDK.";
      description = "AWS Support\nThe AWS Support API reference is intended for programmers who need\ndetailed information about the AWS Support operations and data types.\nThis service enables you to manage your AWS Support cases\nprogrammatically. It uses HTTP methods that return results in JSON\nformat.\nThe AWS Support service also exposes a set of\n<https://aws.amazon.com/premiumsupport/trustedadvisor/ Trusted Advisor>\nfeatures. You can retrieve a list of checks and their descriptions, get\ncheck results, specify checks to refresh, and get the refresh status of\nchecks.\nThe following list describes the AWS Support case management operations:\n-   __Service names, issue categories, and available severity levels.__\nThe < DescribeServices> and < DescribeSeverityLevels> operations\nreturn AWS service names, service codes, service categories, and\nproblem severity levels. You use these values when you call the\n< CreateCase> operation.\n-   __Case creation, case details, and case resolution.__ The\n< CreateCase>, < DescribeCases>, < DescribeAttachment>, and\n< ResolveCase> operations create AWS Support cases, retrieve\ninformation about cases, and resolve cases.\n-   __Case communication.__ The < DescribeCommunications>,\n< AddCommunicationToCase>, and < AddAttachmentsToSet> operations\nretrieve and add communications and attachments to AWS Support\ncases.\nThe following list describes the operations available from the AWS\nSupport service for Trusted Advisor:\n-   < DescribeTrustedAdvisorChecks> returns the list of checks that run\nagainst your AWS resources.\n-   Using the @CheckId@ for a specific check returned by\n< DescribeTrustedAdvisorChecks>, you can call\n< DescribeTrustedAdvisorCheckResult> to obtain the results for the\ncheck you specified.\n-   < DescribeTrustedAdvisorCheckSummaries> returns summarized results\nfor one or more Trusted Advisor checks.\n-   < RefreshTrustedAdvisorCheck> requests that Trusted Advisor rerun a\nspecified check.\n-   < DescribeTrustedAdvisorCheckRefreshStatuses> reports the refresh\nstatus of one or more checks.\nFor authentication of requests, AWS Support uses\n<http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 Signing Process>.\nSee\n<http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html About the AWS Support API>\nin the /AWS Support User Guide/ for information about how to use this\nservice to create and manage your support cases, and how to call Trusted\nAdvisor for results of checks on your resources.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.Support\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
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
        "amazonka-support-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."amazonka-support" or (errorHandler.buildDepError "amazonka-support"))
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