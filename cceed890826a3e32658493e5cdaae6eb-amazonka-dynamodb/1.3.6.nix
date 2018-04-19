{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-dynamodb";
          version = "1.3.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon DynamoDB SDK.";
        description = "Amazon DynamoDB\n__Overview__\nThis is the Amazon DynamoDB API Reference. This guide provides\ndescriptions and samples of the low-level DynamoDB API. For information\nabout DynamoDB application development, see the\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ Amazon DynamoDB Developer Guide>.\nInstead of making the requests to the low-level DynamoDB API directly\nfrom your application, we recommend that you use the AWS Software\nDevelopment Kits (SDKs). The easy-to-use libraries in the AWS SDKs make\nit unnecessary to call the low-level DynamoDB API directly from your\napplication. The libraries take care of request authentication,\nserialization, and connection management. For more information, see\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/UsingAWSSDK.html Using the AWS SDKs with DynamoDB>\nin the /Amazon DynamoDB Developer Guide/.\nIf you decide to code against the low-level DynamoDB API directly, you\nwill need to write the necessary code to authenticate your requests. For\nmore information on signing your requests, see\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/API.html Using the DynamoDB API>\nin the /Amazon DynamoDB Developer Guide/.\nThe following are short descriptions of each low-level API action,\norganized by function.\n__Managing Tables__\n-   /CreateTable/ - Creates a table with user-specified provisioned\nthroughput settings. You must designate one attribute as the hash\nprimary key for the table; you can optionally designate a second\nattribute as the range primary key. DynamoDB creates indexes on\nthese key attributes for fast data access. Optionally, you can\ncreate one or more secondary indexes, which provide fast data access\nusing non-key attributes.\n-   /DescribeTable/ - Returns metadata for a table, such as table size,\nstatus, and index information.\n-   /UpdateTable/ - Modifies the provisioned throughput settings for a\ntable. Optionally, you can modify the provisioned throughput\nsettings for global secondary indexes on the table.\n-   /ListTables/ - Returns a list of all tables associated with the\ncurrent AWS account and endpoint.\n-   /DeleteTable/ - Deletes a table and all of its indexes.\nFor conceptual information about managing tables, see\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html Working with Tables>\nin the /Amazon DynamoDB Developer Guide/.\n__Reading Data__\n-   /GetItem/ - Returns a set of attributes for the item that has a\ngiven primary key. By default, /GetItem/ performs an eventually\nconsistent read; however, applications can request a strongly\nconsistent read instead.\n-   /BatchGetItem/ - Performs multiple /GetItem/ requests for data items\nusing their primary keys, from one table or multiple tables. The\nresponse from /BatchGetItem/ has a size limit of 16 MB and returns a\nmaximum of 100 items. Both eventually consistent and strongly\nconsistent reads can be used.\n-   /Query/ - Returns one or more items from a table or a secondary\nindex. You must provide a specific hash key value. You can narrow\nthe scope of the query using comparison operators against a range\nkey value, or on the index key. /Query/ supports either eventual or\nstrong consistency. A single response has a size limit of 1 MB.\n-   /Scan/ - Reads every item in a table; the result set is eventually\nconsistent. You can limit the number of items returned by filtering\nthe data attributes, using conditional expressions. /Scan/ can be\nused to enable ad-hoc querying of a table against non-key\nattributes; however, since this is a full table scan without using\nan index, /Scan/ should not be used for any application query use\ncase that requires predictable performance.\nFor conceptual information about reading data, see\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html Working with Items>\nand\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html Query and Scan Operations>\nin the /Amazon DynamoDB Developer Guide/.\n__Modifying Data__\n-   /PutItem/ - Creates a new item, or replaces an existing item with a\nnew item (including all the attributes). By default, if an item in\nthe table already exists with the same primary key, the new item\ncompletely replaces the existing item. You can use conditional\noperators to replace an item only if its attribute values match\ncertain conditions, or to insert a new item only if that item\ndoesn\\'t already exist.\n-   /UpdateItem/ - Modifies the attributes of an existing item. You can\nalso use conditional operators to perform an update only if the\nitem\\'s attribute values match certain conditions.\n-   /DeleteItem/ - Deletes an item in a table by primary key. You can\nuse conditional operators to perform a delete an item only if the\nitem\\'s attribute values match certain conditions.\n-   /BatchWriteItem/ - Performs multiple /PutItem/ and /DeleteItem/\nrequests across multiple tables in a single request. A failure of\nany request(s) in the batch will not cause the entire\n/BatchWriteItem/ operation to fail. Supports batches of up to 25\nitems to put or delete, with a maximum total request size of 16 MB.\nFor conceptual information about modifying data, see\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html Working with Items>\nand\n<http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html Query and Scan Operations>\nin the /Amazon DynamoDB Developer Guide/.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.DynamoDB\" and the <http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
        buildType = "Simple";
      };
      components = {
        amazonka-dynamodb = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          amazonka-dynamodb-test = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-dynamodb
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