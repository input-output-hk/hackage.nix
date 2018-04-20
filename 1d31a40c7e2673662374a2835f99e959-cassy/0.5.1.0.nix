{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cassy";
          version = "0.5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ozataman@gmail.com";
        author = "Ozgun Ataman";
        homepage = "http://github.com/ozataman/cassy";
        url = "";
        synopsis = "A high level driver for the Cassandra datastore";
        description = "The objective is to completely isolate away the thrift layer, providing\na more idiomatic Haskell experience working with Cassandra. Be sure\nto check out the README on Github for some more explanation and\nRelease Notes, which is helpful in talking about what this library\ncan do.\n\nCertain parts of the API was inspired by pycassa (Python client) and\nhscassandra (on Hackage).\n\nPlease see the Github repository for more detailed documentation,\nrelease notes and examples.\n\nA brief explanation of modules:\n\n* /Database.Cassandra.Basic/: Contains a low level, simple\nimplementation of Cassandra interaction using the thrift API\nunderneath.\n\n* /Database.Cassandra.Marshall/: Intended to be the main high level\nmodule that you should use, Marshall allows you to pick the\nserialization strategy you would like to use at each function\ncall. We recommend using 'casSafeCopy' due to its support for\nevolving data types, although casJSON maybe another popular\nchoice.\n\n* /Database.Cassandra.JSON/: (Now deprecated; use Marshall instead)\nA higher level API that operates on values with ToJSON and\nFromJSON isntances from the /aeson/ library. This module has in\npart been inspired by Bryan O\\'Sullivan\\'s /riak/ client for\nHaskell.\n\n* /Database.Cassandra.Pool/: Handles a /pool/ of connections to\nmultiple servers in a cluster, splitting the load among them.\n\n* /Database.Cassandra.Pack/: Handles column types that Cassandra\nrecognizes and adds support for Composite Columns.\n\n* /Database.Cassandra.Types/: A common set of types used everywhere.\n\nPotential TODOs include:\n\n* Support for counters and batch mutators\n\n* Support for database admin operations";
        buildType = "Simple";
      };
      components = {
        cassy = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.safecopy
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
            hsPkgs.data-default
            hsPkgs.async
            hsPkgs.errors
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.retry
            hsPkgs.conduit
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.cereal
              hsPkgs.safecopy
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
              hsPkgs.data-default
              hsPkgs.errors
              hsPkgs.MonadCatchIO-transformers
              hsPkgs.retry
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