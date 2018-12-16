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
        name = "amazonka-dynamodb";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon DynamoDB SDK.";
      description = "Amazon DynamoDB is a fully managed NoSQL database service that provides\nfast and predictable performance with seamless scalability. You can use\nAmazon DynamoDB to create a database table that can store and retrieve\nany amount of data, and serve any level of request traffic. Amazon\nDynamoDB automatically spreads the data and traffic for the table over\na sufficient number of servers to handle the request capacity specified\nby the customer and the amount of data stored, while maintaining\nconsistent and fast performance.\n\n/See:/ <http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }