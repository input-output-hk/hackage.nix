{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-dynamodb";
          version = "0.1.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon DynamoDB SDK.";
        description = "Amazon DynamoDB is a fully managed NoSQL database service that provides fast\nand predictable performance with seamless scalability. You can use Amazon\nDynamoDB to create a database table that can store and retrieve any amount of\ndata, and serve any level of request traffic. Amazon DynamoDB automatically\nspreads the data and traffic for the table over a sufficient number of\nservers to handle the request capacity specified by the customer and the\namount of data stored, while maintaining consistent and fast performance.\n\n/See:/ <http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-dynamodb = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }