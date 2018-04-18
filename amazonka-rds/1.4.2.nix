{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-rds";
          version = "1.4.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Relational Database Service SDK.";
        description = "Amazon Relational Database Service\nAmazon Relational Database Service (Amazon RDS) is a web service that\nmakes it easier to set up, operate, and scale a relational database in\nthe cloud. It provides cost-efficient, resizeable capacity for an\nindustry-standard relational database and manages common database\nadministration tasks, freeing up developers to focus on what makes their\napplications and businesses unique.\nAmazon RDS gives you access to the capabilities of a MySQL, MariaDB,\nPostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database\nserver. These capabilities mean that the code, applications, and tools\nyou already use today with your existing databases work with Amazon RDS\nwithout modification. Amazon RDS automatically backs up your database\nand maintains the database software that powers your DB instance. Amazon\nRDS is flexible: you can scale your database instance\\'s compute\nresources and storage capacity to meet your application\\'s demand. As\nwith all Amazon Web Services, there are no up-front investments, and you\npay only for the resources you use.\nThis interface reference for Amazon RDS contains documentation for a\nprogramming or command line interface you can use to manage Amazon RDS.\nNote that Amazon RDS is asynchronous, which means that some interfaces\nmight require techniques such as polling or callback functions to\ndetermine when a command has been applied. In this reference, the\nparameter descriptions indicate whether a command is applied\nimmediately, on the next instance reboot, or during the maintenance\nwindow. The reference structure is as follows, and we list following\nsome related topics from the user guide.\n__Amazon RDS API Reference__\n-   For the alphabetical list of API actions, see\n<http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html API Actions>.\n-   For the alphabetical list of data types, see\n<http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html Data Types>.\n-   For a list of common query parameters, see\n<http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html Common Parameters>.\n-   For descriptions of the error codes, see\n<http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html Common Errors>.\n__Amazon RDS User Guide__\n-   For a summary of the Amazon RDS interfaces, see\n<http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces Available RDS Interfaces>.\n-   For more information about how to use the Query API, see\n<http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html Using the Query API>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.RDS\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-rds = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-rds-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-rds
              hsPkgs.base
              hsPkgs.bytestring
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