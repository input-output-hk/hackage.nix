{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-rds";
          version = "0.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Relational Database Service SDK.";
        description = "Amazon Relational Database Service (Amazon RDS) is a web service that\nmakes it easy to set up, operate, and scale a relational database in\nthe cloud. It provides cost-efficient and resizable capacity while\nmanaging time-consuming database administration tasks, freeing you up\nto focus on your applications and business.\n\n/See:/ <http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-rds = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }