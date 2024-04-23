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
      identifier = { name = "amazonka-sdb"; version = "0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon SimpleDB SDK.";
      description = "Amazon SimpleDB is a highly available and flexible non-relational data\nstore that offloads the work of database administration. Developers\nsimply store and query data items via web services requests and Amazon\nSimpleDB does the rest. Unbound by the strict requirements of a\nrelational database, Amazon SimpleDB is optimized to provide high\navailability and flexibility, with little or no administrative burden.\nBehind the scenes, Amazon SimpleDB creates and manages multiple\ngeographically distributed replicas of your data automatically to\nenable high availability and data durability. The service charges you\nonly for the resources actually consumed in storing your data and\nserving your requests. You can change your data model on the fly, and\ndata is automatically indexed for you. With Amazon SimpleDB, you can\nfocus on application development without worrying about infrastructure\nprovisioning, high availability, software maintenance, schema and index\nmanagement, or performance tuning.\n\n/See:/ <http://docs.aws.amazon.com/AmazonSimpleDB/latest/DeveloperGuide/SDB_API.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
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