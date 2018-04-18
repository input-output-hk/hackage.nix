{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cassy";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ozataman@gmail.com";
        author = "Ozgun Ataman";
        homepage = "http://github.com/ozataman/cassy";
        url = "";
        synopsis = "A high level driver for the Cassandra datastore";
        description = "The objective is to completely isolate away the thrift layer, providing\na more idiomatic Haskell experience working with Cassandra.\n\nCertain parts of the API was inspired by pycassa (Python client) and\nhscassandra (on Hackage).\n\nPlease see the Github repository for more detailed documentation,\nrelease notes and examples.\n\nA brief explanation of modules:\n\n* /Database.Cassandra.Basic/: Contains a low level, simple\nimplementation of Cassandra interaction using the thrift API\nunderneath.\n\n* /Database.Cassandra.JSON/: A higher level API that operates on\nvalues with ToJSON and FromJSON isntances from the /aeson/\nlibrary. This module has in part been inspired by Bryan\nO\\'Sullivan\\'s /riak/ client for Haskell.\n\n* /Database.Cassandra.Pool/: Handles a /pool/ of connections to\nmultiple servers in a cluster, splitting the load among them.\n\n* /Database.Cassandra.Pack/: Handles column types that Cassandra\nrecognizes and adds support for Composite Columns.\n\n* /Database.Cassandra.Types/: A common set of types used everywhere.\n\nPotential TODOs include:\n\n* Support for counters and batch mutators\n\n* Support for database admin operations";
        buildType = "Simple";
      };
      components = {
        cassy = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.Thrift
            hsPkgs.cassandra-thrift
            hsPkgs.resource-pool
            hsPkgs.errors
            hsPkgs.data-default
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.network
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.stm
              hsPkgs.syb
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.aeson
              hsPkgs.Thrift
              hsPkgs.cassandra-thrift
              hsPkgs.resource-pool
              hsPkgs.errors
              hsPkgs.data-default
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.derive
            ];
          };
        };
      };
    }