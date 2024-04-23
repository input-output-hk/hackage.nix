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
      identifier = { name = "amazonka-dynamodb-streams"; version = "1.2.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon DynamoDB Streams SDK.";
      description = "Amazon DynamoDB Streams\nThis is the Amazon DynamoDB Streams API Reference. This guide describes\nthe low-level API actions for accessing streams and processing stream\nrecords. For information about application development with DynamoDB\nStreams, see the\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide//Streams.html Amazon DynamoDB Developer Guide>.\nNote that this document is intended for use with the following DynamoDB\ndocumentation:\n-   <http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ Amazon DynamoDB Developer Guide>\n-   <http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/ Amazon DynamoDB API Reference>\nThe following are short descriptions of each low-level DynamoDB Streams\nAPI action, organized by function.\n-   /DescribeStream/ - Returns detailed information about a particular\nstream.\n-   /GetRecords/ - Retrieves the stream records from within a shard.\n-   /GetShardIterator/ - Returns information on how to retrieve the\nstreams record from a shard with a given shard ID.\n-   /ListStreams/ - Returns a list of all the streams associated with\nthe current AWS account and endpoint.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.DynamoDBStreams\" and the <http://dynamodb-preview.s3-website-us-west-2.amazonaws.com/docs/streams-api/Welcome.html AWS API Reference>\nto get started.";
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
        "amazonka-dynamodb-streams-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."amazonka-dynamodb-streams" or (errorHandler.buildDepError "amazonka-dynamodb-streams"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
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