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
      identifier = { name = "amazonka-redshift"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Redshift SDK.";
      description = "Amazon Redshift is a fast, fully managed, petabyte-scale data warehouse\nservice that makes it simple and cost-effective to efficiently analyze all\nyour data using your existing business intelligence tools. You can start\nsmall for just \$0.25 per hour with no commitments or upfront costs and scale\nto a petabyte or more for \$1,000 per terabyte per year, less than a tenth of\nmost other data warehousing solutions.\n\n/See:/ <http://docs.aws.amazon.com/redshift/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
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
      };
    }