{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-rds";
          version = "1.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Relational Database Service SDK.";
        description = "Amazon Relational Database Service\nAmazon Relational Database Service (Amazon RDS) is a web service that\nmakes it easier to set up, operate, and scale a relational database in\nthe cloud. It provides cost-efficient, resizeable capacity for an\nindustry-standard relational database and manages common database\nadministration tasks, freeing up developers to focus on what makes their\napplications and businesses unique.\nAmazon RDS gives you access to the capabilities of a MySQL, PostgreSQL,\nMicrosoft SQL Server, Oracle, or Aurora database server. This means the\ncode, applications, and tools you already use today with your existing\ndatabases work with Amazon RDS without modification. Amazon RDS\nautomatically backs up your database and maintains the database software\nthat powers your DB instance. Amazon RDS is flexible: you can scale your\ndatabase instance\\'s compute resources and storage capacity to meet your\napplication\\'s demand. As with all Amazon Web Services, there are no\nup-front investments, and you pay only for the resources you use.\nThis is an interface reference for Amazon RDS. It contains documentation\nfor a programming or command line interface you can use to manage Amazon\nRDS. Note that Amazon RDS is asynchronous, which means that some\ninterfaces might require techniques such as polling or callback\nfunctions to determine when a command has been applied. In this\nreference, the parameter descriptions indicate whether a command is\napplied immediately, on the next instance reboot, or during the\nmaintenance window. For a summary of the Amazon RDS interfaces, go to\n<http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces Available RDS Interfaces>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.RDS\" and the <http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
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